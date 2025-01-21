################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.c \
../Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.c 

OBJS += \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.o \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.o 

C_DEPS += \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.d \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Source/CommonTables/%.o Drivers/CMSIS/DSP/Source/CommonTables/%.su Drivers/CMSIS/DSP/Source/CommonTables/%.cyclo: ../Drivers/CMSIS/DSP/Source/CommonTables/%.c Drivers/CMSIS/DSP/Source/CommonTables/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I"/home/isaac/STM32CubeIDE/workspace_1.13.2/Projeto_PDS/Drivers/CMSIS/DSP/Source/BasicMathFunctions" -I"/home/isaac/STM32CubeIDE/workspace_1.13.2/Projeto_PDS/Drivers/CMSIS/DSP/Source/CommonTables" -I"/home/isaac/STM32CubeIDE/workspace_1.13.2/Projeto_PDS/Drivers/CMSIS/DSP/Source/ComplexMathFunctions" -I"/home/isaac/STM32CubeIDE/workspace_1.13.2/Projeto_PDS/Drivers/CMSIS/DSP/Source/ControllerFunctions" -I"/home/isaac/STM32CubeIDE/workspace_1.13.2/Projeto_PDS/Drivers/CMSIS/DSP/Source/FastMathFunctions" -I"/home/isaac/STM32CubeIDE/workspace_1.13.2/Projeto_PDS/Drivers/CMSIS/DSP/Source/FilteringFunctions" -I"/home/isaac/STM32CubeIDE/workspace_1.13.2/Projeto_PDS/Drivers/CMSIS/DSP/Source/MatrixFunctions" -I"/home/isaac/STM32CubeIDE/workspace_1.13.2/Projeto_PDS/Drivers/CMSIS/DSP/Source/StatisticsFunctions" -I"/home/isaac/STM32CubeIDE/workspace_1.13.2/Projeto_PDS/Drivers/CMSIS/DSP/Source/SupportFunctions" -I"/home/isaac/STM32CubeIDE/workspace_1.13.2/Projeto_PDS/Drivers/CMSIS/DSP/Source/TransformFunctions" -I"/home/isaac/STM32CubeIDE/workspace_1.13.2/Projeto_PDS/Drivers/CMSIS/DSP/Include" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-CommonTables

clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-CommonTables:
	-$(RM) ./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.cyclo ./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.d ./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.o ./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.su ./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.cyclo ./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.d ./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.o ./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.su

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-CommonTables

