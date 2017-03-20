#![allow(missing_docs)]

use core::intrinsics::abort;
use hal::lpc17xx::pin;
use hal::pin::Gpio;
use hal::pin::GpioDirection;

pub struct Led {
    pin: pin::Pin,
}

impl Led {
    pub fn new(idx: u8) -> Led {
        Led {
            pin: match idx {
                     0 => get_led(pin::Port::Port3, 14),
                     1 => get_led(pin::Port::Port2, 1),
                     2 => get_led(pin::Port::Port3, 13),
                     3 => get_led(pin::Port::Port3, 12),
                     _ => unsafe { abort() },
                 }
        }
    }

    pub fn on(&self) {
        self.pin.set_low();
    }

    pub fn off(&self) {
        self.pin.set_high();
    }
}

fn get_led(port: pin::Port, pin: u8) -> pin::Pin {
    pin::Pin::new(
        port, pin,
        pin::Function::Gpio,
        Some(GpioDirection::Out))
}
