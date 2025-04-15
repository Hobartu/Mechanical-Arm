#include "stm32f10x.h"

/**
 * @brief  初始化PA0,1,2作为pwm输出.
 *         pwm波的周期为20ms,20ms低电平.

 * @param  无
 * @retval 无
 */
void PWM_Init(void)
{
  TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;
  TIM_OCInitTypeDef TIM_OCInitStructure;
  GPIO_InitTypeDef GPIO_InitStructure;

  RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, ENABLE);

  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_1 | GPIO_Pin_2;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_Init(GPIOA, &GPIO_InitStructure);

  TIM_TimeBaseStructure.TIM_ClockDivision = TIM_CKD_DIV1;
  TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
  TIM_TimeBaseStructure.TIM_Period = 19999;
  TIM_TimeBaseStructure.TIM_Prescaler = 71;
  TIM_TimeBaseInit(TIM2, &TIM_TimeBaseStructure);

  TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1;
  TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
  TIM_OCInitStructure.TIM_Pulse = 0;
  TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High;

  TIM_OC1Init(TIM2, &TIM_OCInitStructure);
  TIM_OC2Init(TIM2, &TIM_OCInitStructure);
  TIM_OC3Init(TIM2, &TIM_OCInitStructure);

  TIM_OC1PreloadConfig(TIM2, TIM_OCPreload_Enable);
  TIM_OC2PreloadConfig(TIM2, TIM_OCPreload_Enable);
  TIM_OC3PreloadConfig(TIM2, TIM_OCPreload_Enable);

  TIM_Cmd(TIM2, ENABLE);
}

/**
 * @brief  输出特定的pwm波使得舵机转动到指定的角度
 * @param  GPIO_Pin 仅期望如下的值
 *		@arg GPIO_Pin_0、GPIO_Pin_1、GPIO_Pin_2
 * @param  Angle 期望一个0°到180°的值（包括边缘）
 * @retval 无
 */
void Set_ServoGPIOA_Angle(uint16_t GPIO_Pin, uint16_t Angle)
{
  uint16_t T = 0;
  if (Angle > 180)
  {
    return;
  }
  T = (500+ (Angle * 100) / 9);

  if (GPIO_Pin == GPIO_Pin_0)
  {
    TIM_SetCompare1(TIM2, T);
  }
  else if (GPIO_Pin == GPIO_Pin_1)
  {
    TIM_SetCompare2(TIM2, T);
  }
  else if (GPIO_Pin == GPIO_Pin_2)
  {
    TIM_SetCompare3(TIM2, T);
  }
}
void Let_ServoGPIOA_Stop(uint16_t GPIO_Pin)
{
    if (GPIO_Pin == GPIO_Pin_0)
    {
      TIM_SetCompare1(TIM2, 0);
    }
    else if (GPIO_Pin == GPIO_Pin_1)
    {
      TIM_SetCompare2(TIM2, 0);
    }
    else if (GPIO_Pin == GPIO_Pin_2)
    {
      TIM_SetCompare3(TIM2, 0);
    }
}
