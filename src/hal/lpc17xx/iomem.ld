PROVIDE(isr_dac          = isr_hardfault);
PROVIDE(isr_m0app        = isr_hardfault);
PROVIDE(isr_dma          = isr_hardfault);
PROVIDE(isr_reserved     = isr_hardfault);
PROVIDE(isr_flasheeprom  = isr_hardfault);
PROVIDE(isr_enet         = isr_hardfault);
PROVIDE(isr_sdio         = isr_hardfault);
PROVIDE(isr_lcd          = isr_hardfault);
PROVIDE(isr_usb0         = isr_hardfault);
PROVIDE(isr_usb1         = isr_hardfault);
PROVIDE(isr_sctimer_pwm  = isr_hardfault);
PROVIDE(isr_ritimer      = isr_hardfault);
PROVIDE(isr_timer_0      = isr_hardfault);
PROVIDE(isr_timer_1      = isr_hardfault);
PROVIDE(isr_timer_2      = isr_hardfault);
PROVIDE(isr_timer_3      = isr_hardfault);
PROVIDE(isr_mcpwm        = isr_hardfault);
PROVIDE(isr_adc0         = isr_hardfault);
PROVIDE(isr_i2c_0        = isr_hardfault);
PROVIDE(isr_i2c_1        = isr_hardfault);
PROVIDE(isr_spi          = isr_hardfault);
PROVIDE(isr_adc1         = isr_hardfault);
PROVIDE(isr_ssp_0        = isr_hardfault);
PROVIDE(isr_ssp_1        = isr_hardfault);
PROVIDE(isr_uart_0       = isr_hardfault);
PROVIDE(isr_uart_1       = isr_hardfault);
PROVIDE(isr_uart_2       = isr_hardfault);
PROVIDE(isr_uart_3       = isr_hardfault);
PROVIDE(isr_i2s0         = isr_hardfault);
PROVIDE(isr_i2s1         = isr_hardfault);
PROVIDE(isr_spifi        = isr_hardfault);
PROVIDE(isr_sgpio        = isr_hardfault);
PROVIDE(isr_pin_int0     = isr_hardfault);
PROVIDE(isr_pin_int1     = isr_hardfault);
PROVIDE(isr_pin_int2     = isr_hardfault);
PROVIDE(isr_pin_int3     = isr_hardfault);
PROVIDE(isr_pin_int4     = isr_hardfault);
PROVIDE(isr_pin_int5     = isr_hardfault);
PROVIDE(isr_pin_int6     = isr_hardfault);
PROVIDE(isr_pin_int7     = isr_hardfault);
PROVIDE(isr_gint0        = isr_hardfault);
PROVIDE(isr_gint1        = isr_hardfault);
PROVIDE(isr_eventrouter  = isr_hardfault);
PROVIDE(isr_c_can1       = isr_hardfault);
PROVIDE(isr_reserved     = isr_hardfault);
PROVIDE(isr_adchs        = isr_hardfault);
PROVIDE(isr_atimer       = isr_hardfault);
PROVIDE(isr_rtc          = isr_hardfault);
PROVIDE(isr_reserved     = isr_hardfault);
PROVIDE(isr_wwdt         = isr_hardfault);
PROVIDE(isr_m0sub        = isr_hardfault);
PROVIDE(isr_c_can0       = isr_hardfault);
PROVIDE(isr_qei          = isr_hardfault);

/* --- LPC43XX specific peripheral definitions ----------------------------- */
/* local SRAM / external static memory banks (0x1000 0000 - 0x2000 0000) */

lpc17xx_iomem_SPIFI_DATA = 0x14000000;

/* Memory map for all busses */
lpc17xx_iomem_PERIPH_AHB  = 0x40000000;
lpc17xx_iomem_PERIPH_APB0 = 0x40080000;
lpc17xx_iomem_PERIPH_APB1 = 0x400A0000;
lpc17xx_iomem_PERIPH_APB2 = 0x400C0000;
lpc17xx_iomem_PERIPH_APB3 = 0x400E0000;

/* Register boundary addresses */
/* AHB (0x4000 0000 - 0x4001 2000) */
lpc17xx_iomem_SCT = (lpc17xx_iomem_PERIPH_AHB + 0x00000);

/* PERIPH_AHB + 0x01000 (0x4000 1000 - 0x4000 1FFF): Reserved */
lpc17xx_iomem_GPDMA = (lpc17xx_iomem_PERIPH_AHB + 0x02000);
lpc17xx_iomem_SPIFI = (lpc17xx_iomem_PERIPH_AHB + 0x03000);
lpc17xx_iomem_SDIO  = (lpc17xx_iomem_PERIPH_AHB + 0x04000);
lpc17xx_iomem_EMC   = (lpc17xx_iomem_PERIPH_AHB + 0x05000);
lpc17xx_iomem_USB0  = (lpc17xx_iomem_PERIPH_AHB + 0x06000);
lpc17xx_iomem_USB1  = (lpc17xx_iomem_PERIPH_AHB + 0x07000);
lpc17xx_iomem_LCD   = (lpc17xx_iomem_PERIPH_AHB + 0x08000);

/* PERIPH_AHB + 0x09000 (0x4000 9000 - 0x4000 FFFF): Reserved */
lpc17xx_iomem_ETHERNET = (lpc17xx_iomem_PERIPH_AHB + 0x10000);

/* 0x4001 2000 - 0x4003 FFFF Reserved */

/* RTC domain peripherals */
lpc17xx_iomem_ATIMER      = 0x40040000;
lpc17xx_iomem_BACKUP_REG  = 0x40041000;
lpc17xx_iomem_PMC         = 0x40042000;
lpc17xx_iomem_CREG        = 0x40043000;
lpc17xx_iomem_EVENTROUTER = 0x40044000;
lpc17xx_iomem_OTP         = 0x40045000;
lpc17xx_iomem_RTC         = 0x40046000;

/* 0x4004 7000 - 0x4004 FFFF Reserved */

/* clocking/reset control peripherals */
lpc17xx_iomem_CGU  = 0x40050000;
lpc17xx_iomem_CCU1 = 0x40051000;
lpc17xx_iomem_CCU2 = 0x40052000;
lpc17xx_iomem_RGU  = 0x40053000;

/* 0x4005 4000 - 0x4005 FFFF Reserved */
/* 0x4006 0000 - 0x4007 FFFF Reserved */

/* APB0 ( 0x4008 0000 - 0x4008 FFFF) */
lpc17xx_iomem_WWDT                  = (lpc17xx_iomem_PERIPH_APB0 + 0x00000);
lpc17xx_iomem_USART0                = (lpc17xx_iomem_PERIPH_APB0 + 0x01000);
lpc17xx_iomem_UART1                 = (lpc17xx_iomem_PERIPH_APB0 + 0x02000);
lpc17xx_iomem_SSP0                  = (lpc17xx_iomem_PERIPH_APB0 + 0x03000);
lpc17xx_iomem_TIMER0                = (lpc17xx_iomem_PERIPH_APB0 + 0x04000);
lpc17xx_iomem_TIMER1                = (lpc17xx_iomem_PERIPH_APB0 + 0x05000);
lpc17xx_iomem_SCU                   = (lpc17xx_iomem_PERIPH_APB0 + 0x06000);
lpc17xx_iomem_GPIO_PIN_INTERRUPT    = (lpc17xx_iomem_PERIPH_APB0 + 0x07000);
lpc17xx_iomem_GPIO_GROUP0_INTERRUPT = (lpc17xx_iomem_PERIPH_APB0 + 0x08000);
lpc17xx_iomem_GPIO_GROUP1_INTERRUPT = (lpc17xx_iomem_PERIPH_APB0 + 0x09000);

/* 0x4008 A000 - 0x4008 FFFF Reserved */
/* 0x4009 0000 - 0x4009 FFFF Reserved */

/* APB1 (0x400A 0000 - 0x400A FFFF) */
lpc17xx_iomem_MCPWM   = (lpc17xx_iomem_PERIPH_APB1 + 0x00000);
lpc17xx_iomem_I2C0    = (lpc17xx_iomem_PERIPH_APB1 + 0x01000);
lpc17xx_iomem_I2S0    = (lpc17xx_iomem_PERIPH_APB1 + 0x02000);
lpc17xx_iomem_I2S1    = (lpc17xx_iomem_PERIPH_APB1 + 0x03000);
lpc17xx_iomem_C_CCAN1 = (lpc17xx_iomem_PERIPH_APB1 + 0x04000);

/* 0x400A 5000 - 0x400A FFFF Reserved */
/* 0x400B 0000 - 0x400B FFFF Reserved */

/* APB2 (0x400C 0000 - 0x400C FFFF) */
lpc17xx_iomem_RITIMER = (lpc17xx_iomem_PERIPH_APB2 + 0x00000);
lpc17xx_iomem_USART2  = (lpc17xx_iomem_PERIPH_APB2 + 0x01000);
lpc17xx_iomem_USART3  = (lpc17xx_iomem_PERIPH_APB2 + 0x02000);
lpc17xx_iomem_TIMER2  = (lpc17xx_iomem_PERIPH_APB2 + 0x03000);
lpc17xx_iomem_TIMER3  = (lpc17xx_iomem_PERIPH_APB2 + 0x04000);
lpc17xx_iomem_SSP1    = (lpc17xx_iomem_PERIPH_APB2 + 0x05000);
lpc17xx_iomem_QEI     = (lpc17xx_iomem_PERIPH_APB2 + 0x06000);
lpc17xx_iomem_GIMA    = (lpc17xx_iomem_PERIPH_APB2 + 0x07000);

/* 0x400C 8000 - 0x400C FFFF Reserved */
/* 0x400D 0000 - 0x400D FFFF Reserved */

/* APB3 (0x400E 0000 - 0x400E FFFF) */
lpc17xx_iomem_I2C1   = (lpc17xx_iomem_PERIPH_APB3 + 0x00000);
lpc17xx_iomem_DAC    = (lpc17xx_iomem_PERIPH_APB3 + 0x01000);
lpc17xx_iomem_C_CAN0 = (lpc17xx_iomem_PERIPH_APB3 + 0x02000);
lpc17xx_iomem_ADC0   = (lpc17xx_iomem_PERIPH_APB3 + 0x03000);
lpc17xx_iomem_ADC1   = (lpc17xx_iomem_PERIPH_APB3 + 0x04000);

/* 0x400E 5000 - 0x400E FFFF Reserved */
/* 0x400F 0000 - 0x400F 0FFF Reserved */

lpc17xx_iomem_AES = 0x400F1000;

/* 0x400F 2000 - 0x400F 3FFF Reserved */

lpc17xx_iomem_GPIO_PORT = 0x400F4000;

/* 0x400F 8000 - 0x400F FFFF Reserved */

lpc17xx_iomem_SPI_PORT   = 0x40100000;
lpc17xx_iomem_SGPIO_PORT = 0x40101000;

/* 0x4010 2000 - 0x41FF FFFF Reserved */
/* 0x4200 0000 - 0x43FF FFFF peripheral bit band alias region */
/* 0x4400 0000 - 0x5FFF FFFF Reserved */

/* 0x6000 0000 - 0xFFFF FFFF external memories and ARM private bus */
lpc17xx_iomem_SPIFI_DATA_UNCACHED = 0x80000000;

/* Lifted from a real lpc17xx, maybe (probably) incorrect) */
lpc17xx_iomem_PINSEL0   = 0x4002C000;
lpc17xx_iomem_PINSEL1   = 0x4002C004;
lpc17xx_iomem_PINSEL2   = 0x4002C008;
lpc17xx_iomem_PINSEL3   = 0x4002C00C;
lpc17xx_iomem_PINSEL4   = 0x4002C010;
lpc17xx_iomem_PINSEL7   = 0x4002C01C;
lpc17xx_iomem_PINSEL9   = 0x4002C024;
lpc17xx_iomem_PINSEL10  = 0x4002C028;

lpc17xx_iomem_PINMODE0  = 0x4002C040;
lpc17xx_iomem_PINMODE1  = 0x4002C044;
lpc17xx_iomem_PINMODE2  = 0x4002C048;
lpc17xx_iomem_PINMODE3  = 0x4002C04C;
lpc17xx_iomem_PINMODE4  = 0x4002C050;
lpc17xx_iomem_PINMODE7  = 0x4002C05C;
lpc17xx_iomem_PINMODE9  = 0x4002C064;

lpc17xx_iomem_PCONP     = 0x400FC0C4;

lpc17xx_iomem_PCLKSEL0  = 0x400FC1A8;
lpc17xx_iomem_PCLKSEL1  = 0x400FC1AC;

lpc17xx_iomem_ADC       = 0x40034000;

lpc17xx_iomem_GPIO0     = 0x2009C000;
lpc17xx_iomem_GPIO1     = 0x2009C020;
lpc17xx_iomem_GPIO2     = 0x2009C040;
lpc17xx_iomem_GPIO3     = 0x2009C060;
lpc17xx_iomem_GPIO4     = 0x2009C080;
