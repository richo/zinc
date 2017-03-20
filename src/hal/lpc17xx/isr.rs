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

//! ISR Data for lpc17xx

use core::option::Option::{self, Some};

extern {
  // fn isr_dac();
  // fn isr_m0app();
  fn isr_dma();
  // fn isr_reserved();
  // fn isr_flasheeprom();
  fn isr_enet();
  // fn isr_sdio();
  // fn isr_lcd();
  // fn isr_usb0();
  // fn isr_usb1();
  // fn isr_sctimer_pwm();
  // fn isr_ritimer();
  fn isr_timer_0();
  fn isr_timer_1();
  fn isr_timer_2();
  fn isr_timer_3();
  fn isr_mcpwm();
  // fn isr_adc0();
  fn isr_i2c_0();
  fn isr_i2c_1();
  fn isr_spi();
  // fn isr_adc1();
  fn isr_ssp_0();
  fn isr_ssp_1();
  fn isr_uart_0();
  fn isr_uart_1();
  fn isr_uart_2();
  fn isr_uart_3();
  // fn isr_i2s0();
  // fn isr_i2s1();
  fn isr_spifi();
  // fn isr_sgpio();
  // fn isr_pin_int0();
  // fn isr_pin_int1();
  // fn isr_pin_int2();
  // fn isr_pin_int3();
  // fn isr_pin_int4();
  // fn isr_pin_int5();
  // fn isr_pin_int6();
  // fn isr_pin_int7();
  // fn isr_gint0();
  // fn isr_gint1();
  // fn isr_eventrouter();
  // fn isr_c_can1();
  // fn isr_reserved2();
  // fn isr_adchs();
  // fn isr_atimer();
  fn isr_rtc();
  // fn isr_reserved3();
  // fn isr_wwdt();
  // fn isr_m0sub();
  // fn isr_c_can0();
  fn isr_qei();
}

#[allow(non_upper_case_globals)]
const ISRCount: usize = 53;

#[allow(non_upper_case_globals)]
#[link_section=".isr_vector_nvic"]
#[no_mangle]
pub static NVICVectors: [Option<unsafe extern fn()>; ISRCount] = [
  // s.a. lpc17xx user manual (v2.1), table 78 (section 9.6.1)
  None, // Some(isr_dac),
  None, // Some(isr_m0app),
  Some(isr_dma),
  None, // Some(isr_reserved),
  None, // Some(isr_flasheeprom),
  Some(isr_enet),
  None, // Some(isr_sdio),
  None, // Some(isr_lcd),
  None, // Some(isr_usb0),
  None, // Some(isr_usb1),
  None, // Some(isr_sctimer_pwm),
  None, // Some(isr_ritimer),
  Some(isr_timer_0),
  Some(isr_timer_1),
  Some(isr_timer_2),
  Some(isr_timer_3),
  Some(isr_mcpwm),
  None, // Some(isr_adc0),
  Some(isr_i2c_0),
  Some(isr_i2c_1),
  Some(isr_spi),
  None, // Some(isr_adc1),
  Some(isr_ssp_0),
  Some(isr_ssp_1),
  Some(isr_uart_0),
  Some(isr_uart_1),
  Some(isr_uart_2),
  Some(isr_uart_3),
  None, // Some(isr_i2s0),
  None, // Some(isr_i2s1),
  Some(isr_spifi),
  None, // Some(isr_sgpio),
  None, // Some(isr_pin_int0),
  None, // Some(isr_pin_int1),
  None, // Some(isr_pin_int2),
  None, // Some(isr_pin_int3),
  None, // Some(isr_pin_int4),
  None, // Some(isr_pin_int5),
  None, // Some(isr_pin_int6),
  None, // Some(isr_pin_int7),
  None, // Some(isr_gint0),
  None, // Some(isr_gint1),
  None, // Some(isr_eventrouter),
  None, // Some(isr_c_can1),
  None, // Some(isr_reserved2),
  None, // Some(isr_adchs),
  None, // Some(isr_atimer),
  Some(isr_rtc),
  None, // Some(isr_reserved3),
  None, // Some(isr_wwdt),
  None, // Some(isr_m0sub),
  None, // Some(isr_c_can0),
  Some(isr_qei),
];
