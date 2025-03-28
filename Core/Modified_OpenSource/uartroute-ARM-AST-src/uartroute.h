/****************************************************************
 **                                                            **
 **    (C)Copyright 2009-2015, American Megatrends Inc.        **
 **                                                            **
 **            All Rights Reserved.                            **
 **                                                            **
 **        5555 Oakbrook Pkwy Suite 200, Norcross              **
 **                                                            **
 **        Georgia - 30093, USA. Phone-(770)-246-8600.         **
 **                                                            **
 ****************************************************************/

/****************************************************************
 *
 * uartroute.h
 * ASPEED UARTROUTE-related for AST
 * definitions, macros, prototypes
 *
*****************************************************************/
#ifndef _UART_ROUTE_H_
#define _UART_ROUTE_H_


/* IOCTL related */
#define UARTROUTE_MAGIC     0 
#define ENABLE_SCU_UART     _IO(UARTROUTE_MAGIC, 0)
#define DISABLE_SCU_UART    _IO(UARTROUTE_MAGIC, 1)
#define ROUTE_UART          _IOW(UARTROUTE_MAGIC, 2, get_uartroute_value_t)

#define PACKED __attribute__ ((packed))

#define SOURCE_PORT_UART		1
#define SOURCE_PORT_COM			2
#define SOURCE_PORT_BOTH		3

typedef struct
{
	unsigned short	uart_port;
	unsigned short	source_port;
	unsigned short	destination_port;
	unsigned short	source_port_type;
} PACKED get_uartroute_value_t;

/* AST2500 SCU Registers */ 
#define AST_SCU_UNLOCK_MAGIC		0x1688A8A8
#define AST_SCU_MULTI_FUNC_1		0x80
#define AST_SCU_MULTI_FUNC_2		0x84
#define AST_SCU_MULTI_PIN_UART1		0x00ff0000
#define AST_SCU_MULTI_PIN_UART2		0xff000000
#define AST_SCU_MULTI_PIN_UART3		0x00ff0000
#define AST_SCU_MULTI_PIN_UART4		0xff000000

/* AST2600 SCU Registers */
#define  AST2600_SCU_MULTI_FUNC_3               0x41c
#define  AST2600_SCU_MULTI_FUNC_4               0x418
#define  AST2600_SCU_MULTI_FUNC_5               0x410
#define  AST2600_SCU_MULTI_FUNC_6               0x414
#define  AST2600_SCU_MULTI_PIN_UART1         0xff
#define  AST2600_SCU_MULTI_PIN_UART2         0xff00
#define  AST2600_SCU_MULTI_PIN_UART3         0x30000000
#define  AST2600_SCU_MULTI_PIN_5_UART3       0x3
#define  AST2600_SCU_MULTI_PIN_55_UART3      0xF0000000
#define  AST2600_SCU_MULTI_PIN_UART4         0xC000
#define  AST2600_SCU_MULTI_PIN_5_UART4       0xfc


/* LPC UART Registers */
#define AST_LPC_HICRA			0x9C
#define AST_LPC_HICR9			0x98

/* HICRA BITS MASK SHIFT*/
#define SEL_5_DW			28	
#define SEL_4_DW			25
#define SEL_3_DW			22
#define SEL_2_DW			19
#define SEL_1_DW			16
#define SEL_5_IO			12
#define SEL_4_IO			9
#define SEL_3_IO			6
#define SEL_2_IO			3
#define SEL_1_IO			0
#define SEL_6_IO			8
#define SEL_10_IO			8 // A2 Silicon
#define SEL_6_DW			12 // A1 Silicon
#define SEL_10_DW			12 // A2 Silicon

#define IO1				1
#define IO2				2
#define IO3				3
#define IO4				4
#define IO5				5
#define IO6				6
#define IO10				6 // A2 Silicon
#define UART1				7
#define UART2				8
#define UART3				9
#define UART4				10
#define UART5				11
#define UART6				12 // A1 Silicon
#define UART10				12 // A2 Silicon


#endif /* _LPC_UART_H_ */
