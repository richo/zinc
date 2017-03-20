#![feature(asm)]
#![feature(plugin, start)]
#![no_std]
#![plugin(macro_zinc)]

extern crate zinc;

use core::option::Option::Some;

use zinc::hal::lpc17xx::pin;
use zinc::hal::lpc17xx::greatfet;
use zinc::hal::pin::Gpio;
use zinc::hal::pin::GpioDirection;
// use zinc::hal::timer::Timer;

fn wait(ticks: u32) {
    let mut i = 0;
    while i < ticks {
        i += 1;
        unsafe { asm!("nop") };
    }
}

macro_rules! nightrider(
  ($($led:ident),+) => (
      $(
          $led.on();
          wait(1_000_000);
          $led.off();
       )+
  )
);

#[zinc_main]
pub fn main() {
  zinc::hal::mem_init::init_stack();
  zinc::hal::mem_init::init_data();

  let led0 = greatfet::Led::new(0);
  let led1 = greatfet::Led::new(1);
  let led2 = greatfet::Led::new(2);
  let led3 = greatfet::Led::new(3);

  loop  {
      nightrider!(led0, led1, led2, led3, led2, led1, led0);
  }
}
