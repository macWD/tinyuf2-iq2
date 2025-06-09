set(JLINK_DEVICE stm32f427vi)

function(update_board TARGET)
  target_sources(${TARGET} PUBLIC
    ${ST_CMSIS}/Source/Templates/gcc/startup_stm32f427xx.s
    )
  target_compile_definitions(${TARGET} PUBLIC
    STM32F427xx
    HSE_VALUE=8000000U
    )
endfunction()
