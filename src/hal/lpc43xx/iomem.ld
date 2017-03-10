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

lpc43xx_iomem_GPIO0     = 0x2009C000;
lpc43xx_iomem_GPIO1     = 0x2009C020;
lpc43xx_iomem_GPIO2     = 0x2009C040;
lpc43xx_iomem_GPIO3     = 0x2009C060;
lpc43xx_iomem_GPIO4     = 0x2009C080;

lpc43xx_iomem_TIMER0    = 0x40004000;
lpc43xx_iomem_TIMER1    = 0x40008000;

lpc43xx_iomem_UART0     = 0x4000C000;

lpc43xx_iomem_PINSEL0   = 0x4002C000;
lpc43xx_iomem_PINSEL1   = 0x4002C004;
lpc43xx_iomem_PINSEL2   = 0x4002C008;
lpc43xx_iomem_PINSEL3   = 0x4002C00C;
lpc43xx_iomem_PINSEL4   = 0x4002C010;
lpc43xx_iomem_PINSEL7   = 0x4002C01C;
lpc43xx_iomem_PINSEL9   = 0x4002C024;
lpc43xx_iomem_PINSEL10  = 0x4002C028;

lpc43xx_iomem_PINMODE0  = 0x4002C040;
lpc43xx_iomem_PINMODE1  = 0x4002C044;
lpc43xx_iomem_PINMODE2  = 0x4002C048;
lpc43xx_iomem_PINMODE3  = 0x4002C04C;
lpc43xx_iomem_PINMODE4  = 0x4002C050;
lpc43xx_iomem_PINMODE7  = 0x4002C05C;
lpc43xx_iomem_PINMODE9  = 0x4002C064;

lpc43xx_iomem_SSP1      = 0x40030000;
lpc43xx_iomem_SSP0      = 0x40088000;

lpc43xx_iomem_ADC       = 0x40034000;

lpc43xx_iomem_TIMER2    = 0x40090000;
lpc43xx_iomem_TIMER3    = 0x40094000;

lpc43xx_iomem_UART2     = 0x40098000;
lpc43xx_iomem_UART3     = 0x4009C000;

lpc43xx_iomem_FLASHCFG  = 0x400FC000;

lpc43xx_iomem_PLL0CON   = 0x400FC080;
lpc43xx_iomem_PLL0CFG   = 0x400FC084;
lpc43xx_iomem_PLL0STAT  = 0x400FC088;
lpc43xx_iomem_PLL0FEED  = 0x400FC08C;

lpc43xx_iomem_PCONP     = 0x400FC0C4;

lpc43xx_iomem_CCLKCFG   = 0x400FC104;
lpc43xx_iomem_CLKSRCSEL = 0x400FC10C;

lpc43xx_iomem_PCLKSEL0  = 0x400FC1A8;
lpc43xx_iomem_PCLKSEL1  = 0x400FC1AC;

lpc43xx_iomem_SCS       = 0x400FC1A0;
