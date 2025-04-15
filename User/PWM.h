#ifndef __PWM_H
#define __PWM_H
	 
void PWM_Init(void); 
void Set_ServoGPIOA_Angle(uint16_t GPIO_Pin,uint16_t Angle); 		
void Let_ServoGPIOA_Stop(uint16_t GPIO_Pin);

#endif
