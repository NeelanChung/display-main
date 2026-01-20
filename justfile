build:
 make clean
 make -j$(nprocs)

# flash using pyocd
flash:
	uvx pyocd flash -t STM32F103C6 build/display.hex

# monitor the UART output using tio
monitor:
  tio --auto-connect latest --map ODELBS
