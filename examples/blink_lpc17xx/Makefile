target/thumbv7em-none-eabi/release/blink: src/main.rs
	cargo build --release --target=thumbv7em-none-eabi

blinky.bin: target/thumbv7em-none-eabi/release/blink
	arm-none-eabi-objcopy -Obinary $< $@

blinky.dfu: blinky.bin
	cp $< _tmp.dfu
	dfu-suffix --vid=0x1fc9 --pid=0x000c --did=0x0 -a _tmp.dfu && dfu-prefix -s 0 -a _tmp.dfu
	python ../../dfu.py greatfet-usb
	cat _header.bin _tmp.dfu > greafet-usb.dfu


.PHONY: target/thumbv7em-none-eabi/release/blink
