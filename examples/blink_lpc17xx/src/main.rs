#![feature(asm)]
#![feature(plugin, start)]
#![no_std]
#![plugin(macro_zinc)]

extern crate zinc;

use core::option::Option::Some;

use zinc::hal::lpc17xx::{pin};
use zinc::hal::pin::Gpio;
use zinc::hal::pin::GpioDirection;
// use zinc::hal::timer::Timer;

#[zinc_main]
pub fn main() {
  zinc::hal::mem_init::init_stack();
  zinc::hal::mem_init::init_data();

  // P1.20 => LED-2 (mbed LPC1768)
  let led2 = pin::Pin::new(
    pin::Port::Port1, 21,
    pin::Function::Gpio,
    Some(GpioDirection::Out));


  loop  {
    led2.set_high();
    for _ in 0..1_000_000 {
        unsafe { asm!("nop") };
    }
    led2.set_low();
    for _ in 0..1_000_000 {
        unsafe { asm!("nop") };
    }
  }
}
