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

lpc43xx_iomem_SPIFI_DATA = 0x14000000;

/* Memory map for all busses */
lpc43xx_iomem_PERIPH_AHB  = 0x40000000;
lpc43xx_iomem_PERIPH_APB0 = 0x40080000;
lpc43xx_iomem_PERIPH_APB1 = 0x400A0000;
lpc43xx_iomem_PERIPH_APB2 = 0x400C0000;
lpc43xx_iomem_PERIPH_APB3 = 0x400E0000;

/* Register boundary addresses */
/* AHB (0x4000 0000 - 0x4001 2000) */
lpc43xx_iomem_SCT = (PERIPH_AHB + 0x00000);

/* PERIPH_AHB + 0x01000 (0x4000 1000 - 0x4000 1FFF): Reserved */
lpc43xx_iomem_GPDMA = (PERIPH_AHB + 0x02000);
lpc43xx_iomem_SPIFI = (PERIPH_AHB + 0x03000);
lpc43xx_iomem_SDIO  = (PERIPH_AHB + 0x04000);
lpc43xx_iomem_EMC   = (PERIPH_AHB + 0x05000);
lpc43xx_iomem_USB0  = (PERIPH_AHB + 0x06000);
lpc43xx_iomem_USB1  = (PERIPH_AHB + 0x07000);
lpc43xx_iomem_LCD   = (PERIPH_AHB + 0x08000);

/* PERIPH_AHB + 0x09000 (0x4000 9000 - 0x4000 FFFF): Reserved */
lpc43xx_iomem_ETHERNET = (PERIPH_AHB + 0x10000);

/* 0x4001 2000 - 0x4003 FFFF Reserved */

/* RTC domain peripherals */
lpc43xx_iomem_ATIMER      = 0x40040000;
lpc43xx_iomem_BACKUP_REG  = 0x40041000;
lpc43xx_iomem_PMC         = 0x40042000;
lpc43xx_iomem_CREG        = 0x40043000;
lpc43xx_iomem_EVENTROUTER = 0x40044000;
lpc43xx_iomem_OTP         = 0x40045000;
lpc43xx_iomem_RTC         = 0x40046000;

/* 0x4004 7000 - 0x4004 FFFF Reserved */

/* clocking/reset control peripherals */
lpc43xx_iomem_CGU  = 0x40050000;
lpc43xx_iomem_CCU1 = 0x40051000;
lpc43xx_iomem_CCU2 = 0x40052000;
lpc43xx_iomem_RGU  = 0x40053000;

/* 0x4005 4000 - 0x4005 FFFF Reserved */
/* 0x4006 0000 - 0x4007 FFFF Reserved */

/* APB0 ( 0x4008 0000 - 0x4008 FFFF) */
lpc43xx_iomem_WWDT                  = (PERIPH_APB0 + 0x00000);
lpc43xx_iomem_USART0                = (PERIPH_APB0 + 0x01000);
lpc43xx_iomem_UART1                 = (PERIPH_APB0 + 0x02000);
lpc43xx_iomem_SSP0                  = (PERIPH_APB0 + 0x03000);
lpc43xx_iomem_TIMER0                = (PERIPH_APB0 + 0x04000);
lpc43xx_iomem_TIMER1                = (PERIPH_APB0 + 0x05000);
lpc43xx_iomem_SCU                   = (PERIPH_APB0 + 0x06000);
lpc43xx_iomem_GPIO_PIN_INTERRUPT    = (PERIPH_APB0 + 0x07000);
lpc43xx_iomem_GPIO_GROUP0_INTERRUPT = (PERIPH_APB0 + 0x08000);
lpc43xx_iomem_GPIO_GROUP1_INTERRUPT = (PERIPH_APB0 + 0x09000);

/* 0x4008 A000 - 0x4008 FFFF Reserved */
/* 0x4009 0000 - 0x4009 FFFF Reserved */

/* APB1 (0x400A 0000 - 0x400A FFFF) */
lpc43xx_iomem_MCPWM   = (PERIPH_APB1 + 0x00000);
lpc43xx_iomem_I2C0    = (PERIPH_APB1 + 0x01000);
lpc43xx_iomem_I2S0    = (PERIPH_APB1 + 0x02000);
lpc43xx_iomem_I2S1    = (PERIPH_APB1 + 0x03000);
lpc43xx_iomem_C_CCAN1 = (PERIPH_APB1 + 0x04000);

/* 0x400A 5000 - 0x400A FFFF Reserved */
/* 0x400B 0000 - 0x400B FFFF Reserved */

/* APB2 (0x400C 0000 - 0x400C FFFF) */
lpc43xx_iomem_RITIMER = (PERIPH_APB2 + 0x00000);
lpc43xx_iomem_USART2  = (PERIPH_APB2 + 0x01000);
lpc43xx_iomem_USART3  = (PERIPH_APB2 + 0x02000);
lpc43xx_iomem_TIMER2  = (PERIPH_APB2 + 0x03000);
lpc43xx_iomem_TIMER3  = (PERIPH_APB2 + 0x04000);
lpc43xx_iomem_SSP1    = (PERIPH_APB2 + 0x05000);
lpc43xx_iomem_QEI     = (PERIPH_APB2 + 0x06000);
lpc43xx_iomem_GIMA    = (PERIPH_APB2 + 0x07000);

/* 0x400C 8000 - 0x400C FFFF Reserved */
/* 0x400D 0000 - 0x400D FFFF Reserved */

/* APB3 (0x400E 0000 - 0x400E FFFF) */
lpc43xx_iomem_I2C1   = (PERIPH_APB3 + 0x00000);
lpc43xx_iomem_DAC    = (PERIPH_APB3 + 0x01000);
lpc43xx_iomem_C_CAN0 = (PERIPH_APB3 + 0x02000);
lpc43xx_iomem_ADC0   = (PERIPH_APB3 + 0x03000);
lpc43xx_iomem_ADC1   = (PERIPH_APB3 + 0x04000);

/* 0x400E 5000 - 0x400E FFFF Reserved */
/* 0x400F 0000 - 0x400F 0FFF Reserved */

lpc43xx_iomem_AES = 0x400F1000;

/* 0x400F 2000 - 0x400F 3FFF Reserved */

lpc43xx_iomem_GPIO_PORT = 0x400F4000;

/* 0x400F 8000 - 0x400F FFFF Reserved */

lpc43xx_iomem_SPI_PORT   = 0x40100000;
lpc43xx_iomem_SGPIO_PORT = 0x40101000;

/* 0x4010 2000 - 0x41FF FFFF Reserved */
/* 0x4200 0000 - 0x43FF FFFF peripheral bit band alias region */
/* 0x4400 0000 - 0x5FFF FFFF Reserved */

/* 0x6000 0000 - 0xFFFF FFFF external memories and ARM private bus */
lpc43xx_iomem_SPIFI_DATA_UNCACHED = 0x80000000;

