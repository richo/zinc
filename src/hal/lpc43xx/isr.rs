// Zinc, the bare metal stack for rust.
// Copyright 2014 Vladimir "farcaller" Pouzanov <farcaller@gmail.com>
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

//! ISR Data for lpc43xx

use core::option::Option::{self, Some};

extern {
  fn isr_dac();
  fn isr_m0app();
  fn isr_dma();
  fn isr_reserved();
  fn isr_flasheeprom();
  fn isr_enet();
  fn isr_sdio();
  fn isr_lcd();
  fn isr_usb0();
  fn isr_usb1();
  fn isr_sctimer_pwm();
  fn isr_ritimer();
  fn isr_timer_0();
  fn isr_timer_1();
  fn isr_timer_2();
  fn isr_timer_3();
  fn isr_mcpwm();
  fn isr_adc0();
  fn isr_i2c_0();
  fn isr_i2c_1();
  fn isr_spi();
  fn isr_adc1();
  fn isr_ssp_0();
  fn isr_ssp_1();
  fn isr_uart_0();
  fn isr_uart_1();
  fn isr_uart_2();
  fn isr_uart_3();
  fn isr_i2s0();
  fn isr_i2s1();
  fn isr_spifi();
  fn isr_sgpio();
  fn isr_pin_int0();
  fn isr_pin_int1();
  fn isr_pin_int2();
  fn isr_pin_int3();
  fn isr_pin_int4();
  fn isr_pin_int5();
  fn isr_pin_int6();
  fn isr_pin_int7();
  fn isr_gint0();
  fn isr_gint1();
  fn isr_eventrouter();
  fn isr_c_can1();
  fn isr_reserved();
  fn isr_adchs();
  fn isr_atimer();
  fn isr_rtc();
  fn isr_reserved();
  fn isr_wwdt();
  fn isr_m0sub();
  fn isr_c_can0();
  fn isr_qei();
}

#[allow(non_upper_case_globals)]
const ISRCount: usize = 53;

#[allow(non_upper_case_globals)]
#[link_section=".isr_vector_nvic"]
#[no_mangle]
pub static NVICVectors: [Option<unsafe extern fn()>; ISRCount] = [
  // s.a. lpc43xx user manual (v2.1), table 78 (section 9.6.1)
  Some(isr_dac),
  Some(isr_m0app),
  Some(isr_dma),
  Some(isr_reserved),
  Some(isr_flasheeprom),
  Some(isr_enet),
  Some(isr_sdio),
  Some(isr_lcd),
  Some(isr_usb0),
  Some(isr_usb1),
  Some(isr_sctimer_pwm),
  Some(isr_ritimer),
  Some(isr_timer_0),
  Some(isr_timer_1),
  Some(isr_timer_2),
  Some(isr_timer_3),
  Some(isr_mcpwm),
  Some(isr_adc0),
  Some(isr_i2c_0),
  Some(isr_i2c_1),
  Some(isr_spi),
  Some(isr_adc1),
  Some(isr_ssp_0),
  Some(isr_ssp_1),
  Some(isr_uart_0),
  Some(isr_uart_1),
  Some(isr_uart_2),
  Some(isr_uart_3),
  Some(isr_i2s0),
  Some(isr_i2s1),
  Some(isr_spifi),
  Some(isr_sgpio),
  Some(isr_pin_int0),
  Some(isr_pin_int1),
  Some(isr_pin_int2),
  Some(isr_pin_int3),
  Some(isr_pin_int4),
  Some(isr_pin_int5),
  Some(isr_pin_int6),
  Some(isr_pin_int7),
  Some(isr_gint0),
  Some(isr_gint1),
  Some(isr_eventrouter),
  Some(isr_c_can1),
  Some(isr_reserved),
  Some(isr_adchs),
  Some(isr_atimer),
  Some(isr_rtc),
  Some(isr_reserved),
  Some(isr_wwdt),
  Some(isr_m0sub),
  Some(isr_c_can0),
  Some(isr_qei),
];
