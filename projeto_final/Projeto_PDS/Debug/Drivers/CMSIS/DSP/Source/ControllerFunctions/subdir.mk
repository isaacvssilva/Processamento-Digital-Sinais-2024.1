################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.c \
../Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.c \
../Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.c \
../Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.c \
../Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.c \
../Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.c \
../Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.c \
../Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.c 

OBJS += \
./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.o \
./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.o \
./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.o \
./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.o \
./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.o \
./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.o \
./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.o \
./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.o 

C_DEPS += \
./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.d \
./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.d \
./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.d \
./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.d \
./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.d \
./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.d \
./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.d \
./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Source/ControllerFunctions/%.o Drivers/CMSIS/DSP/Source/ControllerFunctions/%.su Drivers/CMSIS/DSP/Source/ControllerFunctions/%.cyclo: ../Drivers/CMSIS/DSP/Source/ControllerFunctions/%.c Drivers/CMSIS/DSP/Source/ControllerFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DARM_MATH_CM4 -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I"/home/isaac/STM32CubeIDE/workspace_1.13.2/Projeto_PDS/Drivers/CMSIS/DSP/Source/BasicMathFunctions" -I"/home/isaac/STM32CubeIDE/workspace_1.13.2/Projeto_PDS/Drivers/CMSIS/DSP/Source/CommonTables" -I"/home/isaac/STM32CubeIDE/workspace_1.13.2/Projeto_PDS/Drivers/CMSIS/DSP/Source/ComplexMathFunctions" -I"/home/isaac/STM32CubeIDE/workspace_1.13.2/Projeto_PDS/Drivers/CMSIS/DSP/Source/ControllerFunctions" -I"/home/isaac/STM32CubeIDE/workspace_1.13.2/Projeto_PDS/Drivers/CMSIS/DSP/Source/FastMathFunctions" -I"/home/isaac/STM32CubeIDE/workspace_1.13.2/Projeto_PDS/Drivers/CMSIS/DSP/Source/FilteringFunctions" -I"/home/isaac/STM32CubeIDE/workspace_1.13.2/Projeto_PDS/Drivers/CMSIS/DSP/Source/MatrixFunctions" -I"/home/isaac/STM32CubeIDE/workspace_1.13.2/Projeto_PDS/Drivers/CMSIS/DSP/Source/StatisticsFunctions" -I"/home/isaac/STM32CubeIDE/workspace_1.13.2/Projeto_PDS/Drivers/CMSIS/DSP/Source/SupportFunctions" -I"/home/isaac/STM32CubeIDE/workspace_1.13.2/Projeto_PDS/Drivers/CMSIS/DSP/Source/TransformFunctions" -I"/home/isaac/STM32CubeIDE/workspace_1.13.2/Projeto_PDS/Drivers/CMSIS/DSP/Include" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-ControllerFunctions

clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-ControllerFunctions:
	-$(RM) ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.cyclo ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.d ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.o ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_f32.su ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.cyclo ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.d ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.o ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q15.su ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.cyclo ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.d ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.o ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_init_q31.su ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.cyclo ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.d ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.o ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_f32.su ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.cyclo ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.d ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.o ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q15.su ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.cyclo ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.d ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.o ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_pid_reset_q31.su ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.cyclo ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.d ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.o ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_f32.su ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.cyclo ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.d ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.o ./Drivers/CMSIS/DSP/Source/ControllerFunctions/arm_sin_cos_q31.su

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-ControllerFunctions

