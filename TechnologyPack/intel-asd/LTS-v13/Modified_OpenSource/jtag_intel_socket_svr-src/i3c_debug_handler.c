/*
Copyright (c) 2023, Intel Corporation

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice,
      this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of Intel Corporation nor the names of its contributors
      may be used to endorse or promote products derived from this software
      without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

#include "i3c_debug_handler.h"

void debug_i3c_rx(i3c_cmd* cmd)
{
    if (cmd->read_len > 0 && cmd->rx_buffer != NULL)
    {
        ASD_log_buffer(ASD_LogLevel_Debug, ASD_LogStream_SPP, ASD_LogOption_None,
           cmd->rx_buffer, cmd->read_len, "[RX]");
    }
}

void debug_i3c_tx(i3c_cmd* cmd)
{
    if (cmd->msgType == opcode)
    {
        ASD_log(ASD_LogLevel_Debug, ASD_LogStream_SPP, ASD_LogOption_None,
           "[TX OPCODE]: %02X ", cmd->opcode);
    }
    if (cmd->msgType == action)
    {
        ASD_log(ASD_LogLevel_Debug, ASD_LogStream_SPP, ASD_LogOption_None,
           "[TX ACTION]: %02X ", cmd->action);
    }
    if (cmd->write_len > 0  && cmd->tx_buffer != NULL)
    {
        ASD_log_buffer(ASD_LogLevel_Debug, ASD_LogStream_SPP, ASD_LogOption_None,
           cmd->tx_buffer, cmd->write_len, "[TX]");
    }
}

STATUS send_i3c_action(SPP_Handler* state, i3c_cmd *cmd)
{
    struct i3c_debug_action_ccc action_ccc;
    action_ccc.action = cmd->action;
    int ret;
    if (!state->spp_driver_handle)
    {
        ASD_log(ASD_LogLevel_Error, ASD_LogStream_SPP, ASD_LogOption_None,
                "Failed to use file descriptor:  %d\n", state->spp_driver_handle);
        return ST_ERR;
    }
    debug_i3c_tx(cmd);
    ret = ioctl(state->spp_driver_handle, I3C_DEBUG_IOCTL_DEBUG_ACTION_CCC,
                (int32_t*)&action_ccc);
    ASD_log(ASD_LogLevel_Debug, ASD_LogStream_SPP, ASD_LogOption_None,
            "Ioctl debug action status: %i, errno=%i\n", ret, errno);
    debug_i3c_rx(cmd);

    if (ret < 0)
    {
        ASD_log(ASD_LogLevel_Error, ASD_LogStream_SPP, ASD_LogOption_None,
                "Failed to send Debug Action ioctl\n");
        return ST_ERR;
    }
    return ST_OK;
}

STATUS send_i3c_opcode(SPP_Handler* state, i3c_cmd *cmd)
{
    struct i3c_debug_opcode_ccc opcode_ccc = {0};
    opcode_ccc.opcode = cmd->opcode;
    int ret;
    if (!state->spp_driver_handle)
    {
        ASD_log(ASD_LogLevel_Error, ASD_LogStream_SPP, ASD_LogOption_None,
                "Failed to use file descriptor:  %d\n", state->spp_driver_handle);
        return ST_ERR;
    }
    if (cmd->write_len)
    {
        opcode_ccc.write_len = cmd->write_len;
        opcode_ccc.write_ptr = (uintptr_t)cmd->tx_buffer;
    }
    if (cmd->read_len)
    {
        opcode_ccc.read_len = cmd->read_len;
        opcode_ccc.read_ptr = (uintptr_t)cmd->rx_buffer;
    }

    debug_i3c_tx(cmd);
    ret = ioctl(state->spp_driver_handle, I3C_DEBUG_IOCTL_DEBUG_OPCODE_CCC,
                (int32_t*)&opcode_ccc);
    ASD_log(ASD_LogLevel_Debug, ASD_LogStream_SPP, ASD_LogOption_None,
            "Ioctl debug opcode status: %i, errno=%i\n", ret, errno);
    debug_i3c_rx(cmd);
    if (ret < 0)
    {
        ASD_log(ASD_LogLevel_Error, ASD_LogStream_SPP, ASD_LogOption_None,
                "Failed to send Debug Opcode ioctl\n");
        return ST_ERR;
    }
    return ST_OK;
}

ssize_t rx_i3c(int fd, uint8_t* buffer, uint16_t read_len)
{
    ssize_t read_ret = -1;
    memset(buffer, 0, read_len);
    read_ret = read(fd, buffer, read_len);
    ASD_log(ASD_LogLevel_Debug, ASD_LogStream_SPP, ASD_LogOption_None,
                "Read: %i, errno=%i", read_ret, errno);
    if (read_ret < 0)
    {
        ASD_log(ASD_LogLevel_Error, ASD_LogStream_SPP, ASD_LogOption_None,
                    "Read: Failed to read data %d", read_ret);
        return read_ret;
    }
    return read_ret;
}
ssize_t receive_i3c(SPP_Handler* state, i3c_cmd *cmd)
{
    ssize_t read_ret=0;
    struct pollfd debug_poll_fd;
    debug_poll_fd.fd = state->spp_driver_handle;
    uint8_t event_buffer[MAX_DATA_SIZE] = {0};
    uint16_t *event_size = 0;
    debug_poll_fd.events = POLLIN;
    struct i3c_get_event_data event_data;
    if (state->ibi_handled == false)
    {
        for (;;)
        {
            int ret = poll(&debug_poll_fd, 1, TIMEOUT_I3C_DEBUG_RX);
            if (ret < 0)
            {
                ASD_log(ASD_LogLevel_Error, ASD_LogStream_SPP, ASD_LogOption_None,
                        "receive_i3c: Error while polling");
                return ret;
            }
            if (!ret) {
                ASD_log(ASD_LogLevel_Error, ASD_LogStream_SPP, ASD_LogOption_None,
                        "receive_i3c: Timeout on read");
                break;
            }
            if ((debug_poll_fd.revents & POLLIN) == POLLIN)
            {
                if (i3c_ibi_handler(debug_poll_fd.fd, event_buffer, &event_size) == ST_OK)
                {
                    ASD_log_buffer(ASD_LogLevel_Debug, ASD_LogStream_SPP, ASD_LogOption_None,
                        event_buffer, event_size, "[RIBI]");
                    //TODO: Do something with event buffer, event size
                    //      send event back to OpenIPC Plugin
                    state->ibi_handled = true;
                }
                read_ret = rx_i3c(state->spp_driver_handle, cmd->rx_buffer, cmd->read_len);
                cmd->read_len = read_ret;
                state->ibi_handled = true;
                break;
            }
        }
    } else {
        read_ret = rx_i3c(state->spp_driver_handle, cmd->rx_buffer, cmd->read_len);
        cmd->read_len = read_ret;
        state->ibi_handled = false;
    }
    debug_i3c_rx(cmd);
    return read_ret;
}

STATUS i3c_ibi_handler(int fd, uint8_t* ibi_buffer, uint16_t* ibi_len)
{
    struct i3c_get_event_data event_data;
    event_data.data_len = (uint16_t)(sizeof(ibi_buffer));
    event_data.data_ptr = (uintptr_t)ibi_buffer;
    int ret = ioctl(fd, I3C_DEBUG_IOCTL_GET_EVENT_DATA, (int32_t*)&event_data);
    ASD_log(ASD_LogLevel_Debug, ASD_LogStream_SPP, ASD_LogOption_None,
            "IBI_handler: Ioctl get event data status: %i, errno=%i", ret, errno);
    if (ret < 0)
    {
        ASD_log(ASD_LogLevel_Error, ASD_LogStream_SPP, ASD_LogOption_None,
            "IBI_handler: Failed to send Get Event Data ioctl");
        return ST_ERR;
    }
    else
    {
        *ibi_len = event_data.data_len;
        ASD_log_buffer(ASD_LogLevel_Debug, ASD_LogStream_SPP, ASD_LogOption_None,
            ibi_buffer, event_data.data_len, "[TIBI]");
    }
    return ST_OK;
}

STATUS send_i3c_cmd(SPP_Handler* state, i3c_cmd *cmd)
{
    ssize_t write_ret;
    struct pollfd debug_poll_fd;
    debug_poll_fd.fd = state->spp_driver_handle;
    debug_poll_fd.events = POLLIN;
    uint8_t event_buffer[MAX_DATA_SIZE] = {0};
    uint16_t event_size = 0;
    bool data_ready = false;

    if (state->spp_driver_handle == UNINITIALIZED_SPP_DEBUG_DRIVER_HANDLE)
    {
        ASD_log(ASD_LogLevel_Error, ASD_LogStream_SPP, ASD_LogOption_None,
                "Failed to use file descriptor:  %d\n", state->spp_driver_handle);
        return ST_ERR;
    }
    debug_i3c_tx(cmd);

    write_ret = write(state->spp_driver_handle, cmd->tx_buffer, cmd->write_len);
    if (write_ret < 0)
    {
        ASD_log(ASD_LogLevel_Error, ASD_LogStream_SPP, ASD_LogOption_None,
                "Failed to write data");
        return ST_ERR;
    }

    // Wait for Data Ready
    while (data_ready == false)
    {
        int ret = poll(&debug_poll_fd, 1, TIMEOUT_I3C_DEBUG_RX);
        if (ret < 0)
        {
            ASD_log(ASD_LogLevel_Error, ASD_LogStream_SPP, ASD_LogOption_None,
                    "send_i3c_cmd: Error while polling");
            return ret;
        }
        if (!ret) {
            ASD_log(ASD_LogLevel_Error, ASD_LogStream_SPP, ASD_LogOption_None,
                    "send_i3c_cmd: Timeout wating on data ready");
            break;
        }
        if ((debug_poll_fd.revents & POLLIN) == POLLIN)
        {
            if (i3c_ibi_handler(debug_poll_fd.fd, event_buffer, &event_size) == ST_OK)
            {
                ASD_log_buffer(ASD_LogLevel_Debug, ASD_LogStream_SPP, ASD_LogOption_None,
                               event_buffer, event_size, "[SIBI]");
                // Check if this is a data ready or another IBI
                if ((event_size == 2) && (event_buffer[0] == 0x5c) &&
                    (event_buffer[1] == 0x10)){
                    data_ready = true;
                }
                else {
                    ASD_log(ASD_LogLevel_Debug, ASD_LogStream_SPP, ASD_LogOption_None,
                            "send_i3c_cmd: Not Data Ready IBI");
                    ASD_log_buffer(ASD_LogLevel_Debug, ASD_LogStream_SPP,
                                   ASD_LogOption_None, event_buffer,
                                   event_size, "[NIBI]");
                }
                state->ibi_handled = true;
            }
        }
    }

    return ST_OK;
}
