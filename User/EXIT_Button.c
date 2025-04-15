#include "stm32f10x.h"
/* 定义外部中断输入的端口，PB0、1。提供了初始化函数。     */
void EXTI_Config(void)
{
  GPIO_InitTypeDef GPIO_InitStructure;
  EXTI_InitTypeDef EXTI_InitStructure;
	NVIC_InitTypeDef NVIC_InitStruct;
  // 使能GPIOB时钟
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);
  // 配置PB0
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0|GPIO_Pin_1;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPD;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_Init(GPIOB, &GPIO_InitStructure);
  // 线路输出端口选择

  GPIO_EXTILineConfig(GPIO_PortSourceGPIOB, GPIO_PinSource0);
  GPIO_EXTILineConfig(GPIO_PortSourceGPIOB, GPIO_PinSource1);

  // 配置EXTI0
  EXTI_InitStructure.EXTI_Line = EXTI_Line0 | EXTI_Line1;
  EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
  EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Rising;
  EXTI_InitStructure.EXTI_LineCmd = ENABLE;
  EXTI_Init(&EXTI_InitStructure);
  
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
	
  NVIC_InitStruct.NVIC_IRQChannel = EXTI0_IRQn;
  NVIC_InitStruct.NVIC_IRQChannelPreemptionPriority = 0; // 抢占优先级为0
  NVIC_InitStruct.NVIC_IRQChannelSubPriority = 0;
  NVIC_InitStruct.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStruct);
  
	NVIC_InitStruct.NVIC_IRQChannel = EXTI1_IRQn;
  NVIC_InitStruct.NVIC_IRQChannelPreemptionPriority = 1; // 抢占优先级为0
  NVIC_Init(&NVIC_InitStruct);
	
  NVIC_EnableIRQ(EXTI0_IRQn);
  NVIC_EnableIRQ(EXTI1_IRQn); 
 

}
