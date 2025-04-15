#include "stm32f10x.h"
#include "PWM.h"
#include "Delay.h"
#include "EXIT_Button.h"


#define Clockwise 0x0000
#define AntiClockwise 0xFFFF
#define Servostate_Stop 1
#define Servostate_Active 0 
uint16_t Servo0_Angle = 90;
uint16_t Servo1_Angle = 90;
uint16_t Servo2_Angle = 90;
uint16_t Stop_Sign = 0;
uint16_t Servo_Selcet = 2;
uint16_t Dircetion_Selector = Clockwise;

int main(void)	
{ 
	PWM_Init();
	EXTI_Config();
	Delay_s(1);
	Set_ServoGPIOA_Angle(GPIO_Pin_2, 90);
	Set_ServoGPIOA_Angle(GPIO_Pin_1, 90);
	Set_ServoGPIOA_Angle(GPIO_Pin_0, 90);
	while (1){};
}

void EXTI1_IRQHandler(void)
{ 
	uint16_t Servo_Pin=0;
	if(Stop_Sign == Servostate_Stop){
		Servo_Selcet++;
		Servo_Selcet%=3;
	}
	Servo_Pin=0x0001<<(Servo_Selcet);
	
	if(Stop_Sign == Servostate_Active){
		 Dircetion_Selector= ~(Dircetion_Selector);
	}
	  
	if(Servo_Pin==GPIO_Pin_0){
		while((Stop_Sign == Servostate_Active)){
		if(Dircetion_Selector == Clockwise){
		  Servo0_Angle ++;
		}
		else{
			Servo0_Angle --;
		}
	  Set_ServoGPIOA_Angle(Servo_Pin, Servo0_Angle);
    Delay_ms(50);
	}
	}
	else if(Servo_Pin==GPIO_Pin_1){
		while((Stop_Sign == Servostate_Active)){
		if(Dircetion_Selector == Clockwise){
		  Servo1_Angle ++;
		}
		else{
			Servo1_Angle --;
		}
	  Set_ServoGPIOA_Angle(Servo_Pin, Servo1_Angle);
    Delay_ms(50);
	}
	}
	else{
		while((Stop_Sign == Servostate_Active)){
		if(Dircetion_Selector == Clockwise){
		  Servo2_Angle ++;
		}
		else{
			Servo2_Angle --;
		}
	  Set_ServoGPIOA_Angle(Servo_Pin, Servo2_Angle);
    Delay_ms(50);
	  }
	}
	
	
	EXTI_ClearFlag(EXTI_Line1);
	NVIC_ClearPendingIRQ(EXTI1_IRQn);
} 

void EXTI0_IRQHandler(void)
{ if(Stop_Sign == Servostate_Active)
	{
	 Stop_Sign = Servostate_Stop;
	 
	}
  else{
		Stop_Sign = Servostate_Active;
	}
	Let_ServoGPIOA_Stop(GPIO_Pin_0);
	Let_ServoGPIOA_Stop(GPIO_Pin_1);
	Let_ServoGPIOA_Stop(GPIO_Pin_2);
	EXTI_ClearFlag(EXTI_Line0);
	NVIC_ClearPendingIRQ(EXTI0_IRQn);
}


