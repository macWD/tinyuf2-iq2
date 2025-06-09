CFLAGS += \
  -DSTM32F427xx \
  -DHSE_VALUE=8000000U

SRC_S += \
	$(ST_CMSIS)/Source/Templates/gcc/startup_stm32f427xx.s

# For flash-jlink target
JLINK_DEVICE = stm32f427xx

flash: flash-stlink
erase: erase-stlink
