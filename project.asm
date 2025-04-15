
========================================================================

** ELF Header Information

    File Name: .\Objects\project.axf

    Machine class: ELFCLASS32 (32-bit)
    Data encoding: ELFDATA2LSB (Little endian)
    Header version: EV_CURRENT (Current version)
    Operating System ABI: none
    ABI Version: 0
    File Type: ET_EXEC (Executable) (2)
    Machine: EM_ARM (ARM)

    Image Entry point: 0x0800016d
    Flags: EF_ARM_HASENTRY + EF_ARM_ABI_FLOAT_SOFT (0x05000202)

    ARM ELF revision: 5 (ABI version 2)

    Conforms to Soft float procedure-call standard

    Built with
    Component: ARM Compiler 5.06 update 5 (build 528) Tool: armasm [4d35e1]
    Component: ARM Compiler 5.06 update 5 (build 528) Tool: armlink [4d35e2]

    Header size: 52 bytes (0x34)
    Program header entry size: 32 bytes (0x20)
    Section header entry size: 40 bytes (0x28)

    Program header entries: 1
    Section header entries: 15

    Program header offset: 38052 (0x000094a4)
    Section header offset: 38084 (0x000094c4)

    Section header string table index: 14

========================================================================

** Program header #0 (PT_LOAD) [PF_X + PF_W + PF_R + PF_ARM_ENTRY]
    Size : 2560 bytes (928 bytes in file)
    Virtual address: 0x08000000 (Alignment 8)


========================================================================

** Section #1 'ER_RO' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 928 bytes (alignment 4)
    Address: 0x08000000

    $d.realdata
    RESET
    __Vectors
        0x08000000:    20000660    `..     DCD    536872544
        0x08000004:    0800016d    m...    DCD    134218093
        0x08000008:    08000235    5...    DCD    134218293
        0x0800000c:    0800022d    -...    DCD    134218285
        0x08000010:    08000231    1...    DCD    134218289
        0x08000014:    08000227    '...    DCD    134218279
        0x08000018:    08000389    ....    DCD    134218633
        0x0800001c:    00000000    ....    DCD    0
        0x08000020:    00000000    ....    DCD    0
        0x08000024:    00000000    ....    DCD    0
        0x08000028:    00000000    ....    DCD    0
        0x0800002c:    08000239    9...    DCD    134218297
        0x08000030:    0800022b    +...    DCD    134218283
        0x08000034:    00000000    ....    DCD    0
        0x08000038:    08000237    7...    DCD    134218295
        0x0800003c:    08000325    %...    DCD    134218533
        0x08000040:    08000187    ....    DCD    134218119
        0x08000044:    08000187    ....    DCD    134218119
        0x08000048:    08000187    ....    DCD    134218119
        0x0800004c:    08000187    ....    DCD    134218119
        0x08000050:    08000187    ....    DCD    134218119
        0x08000054:    08000187    ....    DCD    134218119
        0x08000058:    08000187    ....    DCD    134218119
        0x0800005c:    08000187    ....    DCD    134218119
        0x08000060:    08000187    ....    DCD    134218119
        0x08000064:    08000187    ....    DCD    134218119
        0x08000068:    08000187    ....    DCD    134218119
        0x0800006c:    08000187    ....    DCD    134218119
        0x08000070:    08000187    ....    DCD    134218119
        0x08000074:    08000187    ....    DCD    134218119
        0x08000078:    08000187    ....    DCD    134218119
        0x0800007c:    08000187    ....    DCD    134218119
        0x08000080:    08000187    ....    DCD    134218119
        0x08000084:    08000187    ....    DCD    134218119
        0x08000088:    08000187    ....    DCD    134218119
        0x0800008c:    08000187    ....    DCD    134218119
        0x08000090:    08000187    ....    DCD    134218119
        0x08000094:    08000187    ....    DCD    134218119
        0x08000098:    08000187    ....    DCD    134218119
        0x0800009c:    08000187    ....    DCD    134218119
        0x080000a0:    08000187    ....    DCD    134218119
        0x080000a4:    08000187    ....    DCD    134218119
        0x080000a8:    08000187    ....    DCD    134218119
        0x080000ac:    08000187    ....    DCD    134218119
        0x080000b0:    08000187    ....    DCD    134218119
        0x080000b4:    08000187    ....    DCD    134218119
        0x080000b8:    08000187    ....    DCD    134218119
        0x080000bc:    08000187    ....    DCD    134218119
        0x080000c0:    08000187    ....    DCD    134218119
        0x080000c4:    08000187    ....    DCD    134218119
        0x080000c8:    08000187    ....    DCD    134218119
        0x080000cc:    08000187    ....    DCD    134218119
        0x080000d0:    08000187    ....    DCD    134218119
        0x080000d4:    08000187    ....    DCD    134218119
        0x080000d8:    08000187    ....    DCD    134218119
        0x080000dc:    08000187    ....    DCD    134218119
        0x080000e0:    08000187    ....    DCD    134218119
        0x080000e4:    08000187    ....    DCD    134218119
        0x080000e8:    08000187    ....    DCD    134218119
    $t
    !!!main
    __Vectors_End
    __main
        0x080000ec:    f000f802    ....    BL       __scatterload ; 0x80000f4
        0x080000f0:    f000f82c    ..,.    BL       __rt_entry ; 0x800014c
    !!!scatter
    __scatterload
    __scatterload_rt2
    __scatterload_rt2_thumb_only
        0x080000f4:    a00a        ..      ADR      r0,{pc}+0x2c ; 0x8000120
        0x080000f6:    e8900c00    ....    LDM      r0,{r10,r11}
        0x080000fa:    4482        .D      ADD      r10,r10,r0
        0x080000fc:    4483        .D      ADD      r11,r11,r0
        0x080000fe:    f1aa0701    ....    SUB      r7,r10,#1
    __scatterload_null
        0x08000102:    45da        .E      CMP      r10,r11
        0x08000104:    d101        ..      BNE      0x800010a ; __scatterload_null + 8
        0x08000106:    f000f821    ..!.    BL       __rt_entry ; 0x800014c
        0x0800010a:    f2af0e09    ....    ADR      lr,{pc}-7 ; 0x8000103
        0x0800010e:    e8ba000f    ....    LDM      r10!,{r0-r3}
        0x08000112:    f0130f01    ....    TST      r3,#1
        0x08000116:    bf18        ..      IT       NE
        0x08000118:    1afb        ..      SUBNE    r3,r7,r3
        0x0800011a:    f0430301    C...    ORR      r3,r3,#1
        0x0800011e:    4718        .G      BX       r3
    $d
        0x08000120:    00000270    p...    DCD    624
        0x08000124:    00000280    ....    DCD    640
    $t
    !!handler_zi
    __scatterload_zeroinit
        0x08000128:    2300        .#      MOVS     r3,#0
        0x0800012a:    2400        .$      MOVS     r4,#0
        0x0800012c:    2500        .%      MOVS     r5,#0
        0x0800012e:    2600        .&      MOVS     r6,#0
        0x08000130:    3a10        .:      SUBS     r2,r2,#0x10
        0x08000132:    bf28        (.      IT       CS
        0x08000134:    c178        x.      STMCS    r1!,{r3-r6}
        0x08000136:    d8fb        ..      BHI      0x8000130 ; __scatterload_zeroinit + 8
        0x08000138:    0752        R.      LSLS     r2,r2,#29
        0x0800013a:    bf28        (.      IT       CS
        0x0800013c:    c130        0.      STMCS    r1!,{r4,r5}
        0x0800013e:    bf48        H.      IT       MI
        0x08000140:    600b        .`      STRMI    r3,[r1,#0]
        0x08000142:    4770        pG      BX       lr
    .ARM.Collect$$libinit$$00000000
    __rt_lib_init
        0x08000144:    b51f        ..      PUSH     {r0-r4,lr}
    .ARM.Collect$$libinit$$00000002
    .ARM.Collect$$libinit$$00000004
    .ARM.Collect$$libinit$$0000000A
    .ARM.Collect$$libinit$$0000000C
    .ARM.Collect$$libinit$$0000000E
    .ARM.Collect$$libinit$$00000011
    .ARM.Collect$$libinit$$00000013
    .ARM.Collect$$libinit$$00000015
    .ARM.Collect$$libinit$$00000017
    .ARM.Collect$$libinit$$00000019
    .ARM.Collect$$libinit$$0000001B
    .ARM.Collect$$libinit$$0000001D
    .ARM.Collect$$libinit$$0000001F
    .ARM.Collect$$libinit$$00000021
    .ARM.Collect$$libinit$$00000023
    .ARM.Collect$$libinit$$00000025
    .ARM.Collect$$libinit$$0000002C
    .ARM.Collect$$libinit$$0000002E
    .ARM.Collect$$libinit$$00000030
    .ARM.Collect$$libinit$$00000032
    .ARM.Collect$$libinit$$00000033
    __rt_lib_init_alloca_1
    __rt_lib_init_argv_1
    __rt_lib_init_atexit_1
    __rt_lib_init_clock_1
    __rt_lib_init_cpp_1
    __rt_lib_init_exceptions_1
    __rt_lib_init_fp_1
    __rt_lib_init_fp_trap_1
    __rt_lib_init_getenv_1
    __rt_lib_init_heap_1
    __rt_lib_init_lc_collate_1
    __rt_lib_init_lc_ctype_1
    __rt_lib_init_lc_monetary_1
    __rt_lib_init_lc_numeric_1
    __rt_lib_init_lc_time_1
    __rt_lib_init_preinit_1
    __rt_lib_init_rand_1
    __rt_lib_init_return
    __rt_lib_init_signal_1
    __rt_lib_init_stdio_1
    __rt_lib_init_user_alloc_1
        0x08000146:    bd1f        ..      POP      {r0-r4,pc}
    .ARM.Collect$$libshutdown$$00000000
    __rt_lib_shutdown
        0x08000148:    b510        ..      PUSH     {r4,lr}
    .ARM.Collect$$libshutdown$$00000002
    .ARM.Collect$$libshutdown$$00000004
    .ARM.Collect$$libshutdown$$00000007
    .ARM.Collect$$libshutdown$$0000000A
    .ARM.Collect$$libshutdown$$0000000C
    .ARM.Collect$$libshutdown$$0000000F
    .ARM.Collect$$libshutdown$$00000010
    __rt_lib_shutdown_cpp_1
    __rt_lib_shutdown_fp_trap_1
    __rt_lib_shutdown_heap_1
    __rt_lib_shutdown_return
    __rt_lib_shutdown_signal_1
    __rt_lib_shutdown_stdio_1
    __rt_lib_shutdown_user_alloc_1
        0x0800014a:    bd10        ..      POP      {r4,pc}
    .ARM.Collect$$rtentry$$00000000
    .ARM.Collect$$rtentry$$00000002
    .ARM.Collect$$rtentry$$00000004
    __rt_entry
    __rt_entry_presh_1
    __rt_entry_sh
        0x0800014c:    f000f831    ..1.    BL       __user_setup_stackheap ; 0x80001b2
        0x08000150:    4611        .F      MOV      r1,r2
    .ARM.Collect$$rtentry$$00000009
    .ARM.Collect$$rtentry$$0000000A
    __rt_entry_li
    __rt_entry_postsh_1
        0x08000152:    f7fffff7    ....    BL       __rt_lib_init ; 0x8000144
    .ARM.Collect$$rtentry$$0000000C
    .ARM.Collect$$rtentry$$0000000D
    __rt_entry_main
    __rt_entry_postli_1
        0x08000156:    f000f919    ....    BL       main ; 0x800038c
        0x0800015a:    f000f84f    ..O.    BL       exit ; 0x80001fc
    .ARM.Collect$$rtexit$$00000000
    __rt_exit
        0x0800015e:    b403        ..      PUSH     {r0,r1}
    .ARM.Collect$$rtexit$$00000002
    .ARM.Collect$$rtexit$$00000003
    __rt_exit_ls
    __rt_exit_prels_1
        0x08000160:    f7fffff2    ....    BL       __rt_lib_shutdown ; 0x8000148
    .ARM.Collect$$rtexit$$00000004
    __rt_exit_exit
        0x08000164:    bc03        ..      POP      {r0,r1}
        0x08000166:    f000f857    ..W.    BL       _sys_exit ; 0x8000218
        0x0800016a:    0000        ..      MOVS     r0,r0
    .text
    Reset_Handler
        0x0800016c:    4809        .H      LDR      r0,[pc,#36] ; [0x8000194] = 0x8000329
        0x0800016e:    4780        .G      BLX      r0
        0x08000170:    4809        .H      LDR      r0,[pc,#36] ; [0x8000198] = 0x80000ed
        0x08000172:    4700        .G      BX       r0
        0x08000174:    e7fe        ..      B        0x8000174 ; Reset_Handler + 8
        0x08000176:    e7fe        ..      B        0x8000176 ; Reset_Handler + 10
        0x08000178:    e7fe        ..      B        0x8000178 ; Reset_Handler + 12
        0x0800017a:    e7fe        ..      B        0x800017a ; Reset_Handler + 14
        0x0800017c:    e7fe        ..      B        0x800017c ; Reset_Handler + 16
        0x0800017e:    e7fe        ..      B        0x800017e ; Reset_Handler + 18
        0x08000180:    e7fe        ..      B        0x8000180 ; Reset_Handler + 20
        0x08000182:    e7fe        ..      B        0x8000182 ; Reset_Handler + 22
        0x08000184:    e7fe        ..      B        0x8000184 ; Reset_Handler + 24
    ADC1_2_IRQHandler
    CAN1_RX1_IRQHandler
    CAN1_SCE_IRQHandler
    DMA1_Channel1_IRQHandler
    DMA1_Channel2_IRQHandler
    DMA1_Channel3_IRQHandler
    DMA1_Channel4_IRQHandler
    DMA1_Channel5_IRQHandler
    DMA1_Channel6_IRQHandler
    DMA1_Channel7_IRQHandler
    EXTI0_IRQHandler
    EXTI15_10_IRQHandler
    EXTI1_IRQHandler
    EXTI2_IRQHandler
    EXTI3_IRQHandler
    EXTI4_IRQHandler
    EXTI9_5_IRQHandler
    FLASH_IRQHandler
    I2C1_ER_IRQHandler
    I2C1_EV_IRQHandler
    I2C2_ER_IRQHandler
    I2C2_EV_IRQHandler
    PVD_IRQHandler
    RCC_IRQHandler
    RTCAlarm_IRQHandler
    RTC_IRQHandler
    SPI1_IRQHandler
    SPI2_IRQHandler
    TAMPER_IRQHandler
    TIM1_BRK_IRQHandler
    TIM1_CC_IRQHandler
    TIM1_TRG_COM_IRQHandler
    TIM1_UP_IRQHandler
    TIM2_IRQHandler
    TIM3_IRQHandler
    TIM4_IRQHandler
    USART1_IRQHandler
    USART2_IRQHandler
    USART3_IRQHandler
    USBWakeUp_IRQHandler
    USB_HP_CAN1_TX_IRQHandler
    USB_LP_CAN1_RX0_IRQHandler
    WWDG_IRQHandler
        0x08000186:    e7fe        ..      B        ADC1_2_IRQHandler ; 0x8000186
    __user_initial_stackheap
        0x08000188:    4804        .H      LDR      r0,[pc,#16] ; [0x800019c] = 0x20000060
        0x0800018a:    4905        .I      LDR      r1,[pc,#20] ; [0x80001a0] = 0x20000660
        0x0800018c:    4a05        .J      LDR      r2,[pc,#20] ; [0x80001a4] = 0x20000260
        0x0800018e:    4b06        .K      LDR      r3,[pc,#24] ; [0x80001a8] = 0x20000260
        0x08000190:    4770        pG      BX       lr
    $d
        0x08000192:    0000        ..      DCW    0
        0x08000194:    08000329    )...    DCD    134218537
        0x08000198:    080000ed    ....    DCD    134217965
        0x0800019c:    20000060    `..     DCD    536871008
        0x080001a0:    20000660    `..     DCD    536872544
        0x080001a4:    20000260    `..     DCD    536871520
        0x080001a8:    20000260    `..     DCD    536871520
    $t
    .text
    __use_two_region_memory
        0x080001ac:    4770        pG      BX       lr
    __rt_heap_escrow$2region
        0x080001ae:    4770        pG      BX       lr
    __rt_heap_expand$2region
        0x080001b0:    4770        pG      BX       lr
    .text
    __user_setup_stackheap
        0x080001b2:    4675        uF      MOV      r5,lr
        0x080001b4:    f000f82c    ..,.    BL       __user_libspace ; 0x8000210
        0x080001b8:    46ae        .F      MOV      lr,r5
        0x080001ba:    0005        ..      MOVS     r5,r0
        0x080001bc:    4669        iF      MOV      r1,sp
        0x080001be:    4653        SF      MOV      r3,r10
        0x080001c0:    f0200007     ...    BIC      r0,r0,#7
        0x080001c4:    4685        .F      MOV      sp,r0
        0x080001c6:    b018        ..      ADD      sp,sp,#0x60
        0x080001c8:    b520         .      PUSH     {r5,lr}
        0x080001ca:    f7ffffdd    ....    BL       __user_initial_stackheap ; 0x8000188
        0x080001ce:    e8bd4020    .. @    POP      {r5,lr}
        0x080001d2:    f04f0600    O...    MOV      r6,#0
        0x080001d6:    f04f0700    O...    MOV      r7,#0
        0x080001da:    f04f0800    O...    MOV      r8,#0
        0x080001de:    f04f0b00    O...    MOV      r11,#0
        0x080001e2:    f0210107    !...    BIC      r1,r1,#7
        0x080001e6:    46ac        .F      MOV      r12,r5
        0x080001e8:    e8ac09c0    ....    STM      r12!,{r6-r8,r11}
        0x080001ec:    e8ac09c0    ....    STM      r12!,{r6-r8,r11}
        0x080001f0:    e8ac09c0    ....    STM      r12!,{r6-r8,r11}
        0x080001f4:    e8ac09c0    ....    STM      r12!,{r6-r8,r11}
        0x080001f8:    468d        .F      MOV      sp,r1
        0x080001fa:    4770        pG      BX       lr
    .text
    exit
        0x080001fc:    b510        ..      PUSH     {r4,lr}
        0x080001fe:    4604        .F      MOV      r4,r0
        0x08000200:    f3af8000    ....    NOP.W    
        0x08000204:    4620         F      MOV      r0,r4
        0x08000206:    e8bd4010    ...@    POP      {r4,lr}
        0x0800020a:    f7ffbfa8    ....    B.W      __rt_exit ; 0x800015e
        0x0800020e:    0000        ..      MOVS     r0,r0
    .text
    __user_libspace
    __user_perproc_libspace
    __user_perthread_libspace
        0x08000210:    4800        .H      LDR      r0,[pc,#0] ; [0x8000214] = 0x20000000
        0x08000212:    4770        pG      BX       lr
    $d
        0x08000214:    20000000    ...     DCD    536870912
    $t
    .text
    _sys_exit
        0x08000218:    4901        .I      LDR      r1,[pc,#4] ; [0x8000220] = 0x20026
        0x0800021a:    2018        .       MOVS     r0,#0x18
        0x0800021c:    beab        ..      BKPT     #0xab
        0x0800021e:    e7fe        ..      B        0x800021e ; _sys_exit + 6
    $d
        0x08000220:    00020026    &...    DCD    131110
    $t
    .text
    __I$use$semihosting
    __use_no_semihosting_swi
        0x08000224:    4770        pG      BX       lr
    i.BusFault_Handler
    .text
    BusFault_Handler
    __semihosting_library_function
        0x08000226:    bf00        ..      NOP      
        0x08000228:    e7fe        ..      B        0x8000228 ; BusFault_Handler + 2
    i.DebugMon_Handler
    DebugMon_Handler
        0x0800022a:    4770        pG      BX       lr
    i.HardFault_Handler
    HardFault_Handler
        0x0800022c:    bf00        ..      NOP      
        0x0800022e:    e7fe        ..      B        0x800022e ; HardFault_Handler + 2
    i.MemManage_Handler
    MemManage_Handler
        0x08000230:    bf00        ..      NOP      
        0x08000232:    e7fe        ..      B        0x8000232 ; MemManage_Handler + 2
    i.NMI_Handler
    NMI_Handler
        0x08000234:    4770        pG      BX       lr
    i.PendSV_Handler
    PendSV_Handler
        0x08000236:    4770        pG      BX       lr
    i.SVC_Handler
    SVC_Handler
        0x08000238:    4770        pG      BX       lr
    i.SetSysClock
    SetSysClock
        0x0800023a:    b510        ..      PUSH     {r4,lr}
        0x0800023c:    f000f802    ....    BL       SetSysClockTo72 ; 0x8000244
        0x08000240:    bd10        ..      POP      {r4,pc}
        0x08000242:    0000        ..      MOVS     r0,r0
    i.SetSysClockTo72
    SetSysClockTo72
        0x08000244:    b50c        ..      PUSH     {r2,r3,lr}
        0x08000246:    2000        .       MOVS     r0,#0
        0x08000248:    9001        ..      STR      r0,[sp,#4]
        0x0800024a:    9000        ..      STR      r0,[sp,#0]
        0x0800024c:    4833        3H      LDR      r0,[pc,#204] ; [0x800031c] = 0x40021000
        0x0800024e:    6800        .h      LDR      r0,[r0,#0]
        0x08000250:    f4403080    @..0    ORR      r0,r0,#0x10000
        0x08000254:    4931        1I      LDR      r1,[pc,#196] ; [0x800031c] = 0x40021000
        0x08000256:    6008        .`      STR      r0,[r1,#0]
        0x08000258:    bf00        ..      NOP      
        0x0800025a:    4830        0H      LDR      r0,[pc,#192] ; [0x800031c] = 0x40021000
        0x0800025c:    6800        .h      LDR      r0,[r0,#0]
        0x0800025e:    f4003000    ...0    AND      r0,r0,#0x20000
        0x08000262:    9000        ..      STR      r0,[sp,#0]
        0x08000264:    9801        ..      LDR      r0,[sp,#4]
        0x08000266:    1c40        @.      ADDS     r0,r0,#1
        0x08000268:    9001        ..      STR      r0,[sp,#4]
        0x0800026a:    9800        ..      LDR      r0,[sp,#0]
        0x0800026c:    b918        ..      CBNZ     r0,0x8000276 ; SetSysClockTo72 + 50
        0x0800026e:    9801        ..      LDR      r0,[sp,#4]
        0x08000270:    f5b06fa0    ...o    CMP      r0,#0x500
        0x08000274:    d1f1        ..      BNE      0x800025a ; SetSysClockTo72 + 22
        0x08000276:    4829        )H      LDR      r0,[pc,#164] ; [0x800031c] = 0x40021000
        0x08000278:    6800        .h      LDR      r0,[r0,#0]
        0x0800027a:    f4003000    ...0    AND      r0,r0,#0x20000
        0x0800027e:    b110        ..      CBZ      r0,0x8000286 ; SetSysClockTo72 + 66
        0x08000280:    2001        .       MOVS     r0,#1
        0x08000282:    9000        ..      STR      r0,[sp,#0]
        0x08000284:    e001        ..      B        0x800028a ; SetSysClockTo72 + 70
        0x08000286:    2000        .       MOVS     r0,#0
        0x08000288:    9000        ..      STR      r0,[sp,#0]
        0x0800028a:    9800        ..      LDR      r0,[sp,#0]
        0x0800028c:    2801        .(      CMP      r0,#1
        0x0800028e:    d143        C.      BNE      0x8000318 ; SetSysClockTo72 + 212
        0x08000290:    4823        #H      LDR      r0,[pc,#140] ; [0x8000320] = 0x40022000
        0x08000292:    6800        .h      LDR      r0,[r0,#0]
        0x08000294:    f0400010    @...    ORR      r0,r0,#0x10
        0x08000298:    4921        !I      LDR      r1,[pc,#132] ; [0x8000320] = 0x40022000
        0x0800029a:    6008        .`      STR      r0,[r1,#0]
        0x0800029c:    4608        .F      MOV      r0,r1
        0x0800029e:    6800        .h      LDR      r0,[r0,#0]
        0x080002a0:    f0200003     ...    BIC      r0,r0,#3
        0x080002a4:    6008        .`      STR      r0,[r1,#0]
        0x080002a6:    4608        .F      MOV      r0,r1
        0x080002a8:    6800        .h      LDR      r0,[r0,#0]
        0x080002aa:    f0400002    @...    ORR      r0,r0,#2
        0x080002ae:    6008        .`      STR      r0,[r1,#0]
        0x080002b0:    481a        .H      LDR      r0,[pc,#104] ; [0x800031c] = 0x40021000
        0x080002b2:    6840        @h      LDR      r0,[r0,#4]
        0x080002b4:    4919        .I      LDR      r1,[pc,#100] ; [0x800031c] = 0x40021000
        0x080002b6:    6048        H`      STR      r0,[r1,#4]
        0x080002b8:    4608        .F      MOV      r0,r1
        0x080002ba:    6840        @h      LDR      r0,[r0,#4]
        0x080002bc:    6048        H`      STR      r0,[r1,#4]
        0x080002be:    4608        .F      MOV      r0,r1
        0x080002c0:    6840        @h      LDR      r0,[r0,#4]
        0x080002c2:    f4406080    @..`    ORR      r0,r0,#0x400
        0x080002c6:    6048        H`      STR      r0,[r1,#4]
        0x080002c8:    4608        .F      MOV      r0,r1
        0x080002ca:    6840        @h      LDR      r0,[r0,#4]
        0x080002cc:    f420107c     .|.    BIC      r0,r0,#0x3f0000
        0x080002d0:    6048        H`      STR      r0,[r1,#4]
        0x080002d2:    4608        .F      MOV      r0,r1
        0x080002d4:    6840        @h      LDR      r0,[r0,#4]
        0x080002d6:    f44010e8    @...    ORR      r0,r0,#0x1d0000
        0x080002da:    6048        H`      STR      r0,[r1,#4]
        0x080002dc:    4608        .F      MOV      r0,r1
        0x080002de:    6800        .h      LDR      r0,[r0,#0]
        0x080002e0:    f0407080    @..p    ORR      r0,r0,#0x1000000
        0x080002e4:    6008        .`      STR      r0,[r1,#0]
        0x080002e6:    bf00        ..      NOP      
        0x080002e8:    480c        .H      LDR      r0,[pc,#48] ; [0x800031c] = 0x40021000
        0x080002ea:    6800        .h      LDR      r0,[r0,#0]
        0x080002ec:    f0007000    ...p    AND      r0,r0,#0x2000000
        0x080002f0:    2800        .(      CMP      r0,#0
        0x080002f2:    d0f9        ..      BEQ      0x80002e8 ; SetSysClockTo72 + 164
        0x080002f4:    4809        .H      LDR      r0,[pc,#36] ; [0x800031c] = 0x40021000
        0x080002f6:    6840        @h      LDR      r0,[r0,#4]
        0x080002f8:    f0200003     ...    BIC      r0,r0,#3
        0x080002fc:    4907        .I      LDR      r1,[pc,#28] ; [0x800031c] = 0x40021000
        0x080002fe:    6048        H`      STR      r0,[r1,#4]
        0x08000300:    4608        .F      MOV      r0,r1
        0x08000302:    6840        @h      LDR      r0,[r0,#4]
        0x08000304:    f0400002    @...    ORR      r0,r0,#2
        0x08000308:    6048        H`      STR      r0,[r1,#4]
        0x0800030a:    bf00        ..      NOP      
        0x0800030c:    4803        .H      LDR      r0,[pc,#12] ; [0x800031c] = 0x40021000
        0x0800030e:    6840        @h      LDR      r0,[r0,#4]
        0x08000310:    f000000c    ....    AND      r0,r0,#0xc
        0x08000314:    2808        .(      CMP      r0,#8
        0x08000316:    d1f9        ..      BNE      0x800030c ; SetSysClockTo72 + 200
        0x08000318:    bd0c        ..      POP      {r2,r3,pc}
    $d
        0x0800031a:    0000        ..      DCW    0
        0x0800031c:    40021000    ...@    DCD    1073876992
        0x08000320:    40022000    . .@    DCD    1073881088
    $t
    i.SysTick_Handler
    SysTick_Handler
        0x08000324:    4770        pG      BX       lr
        0x08000326:    0000        ..      MOVS     r0,r0
    i.SystemInit
    SystemInit
        0x08000328:    b510        ..      PUSH     {r4,lr}
        0x0800032a:    4813        .H      LDR      r0,[pc,#76] ; [0x8000378] = 0x40021000
        0x0800032c:    6800        .h      LDR      r0,[r0,#0]
        0x0800032e:    f0400001    @...    ORR      r0,r0,#1
        0x08000332:    4911        .I      LDR      r1,[pc,#68] ; [0x8000378] = 0x40021000
        0x08000334:    6008        .`      STR      r0,[r1,#0]
        0x08000336:    4608        .F      MOV      r0,r1
        0x08000338:    6840        @h      LDR      r0,[r0,#4]
        0x0800033a:    4910        .I      LDR      r1,[pc,#64] ; [0x800037c] = 0xf8ff0000
        0x0800033c:    4008        .@      ANDS     r0,r0,r1
        0x0800033e:    490e        .I      LDR      r1,[pc,#56] ; [0x8000378] = 0x40021000
        0x08000340:    6048        H`      STR      r0,[r1,#4]
        0x08000342:    4608        .F      MOV      r0,r1
        0x08000344:    6800        .h      LDR      r0,[r0,#0]
        0x08000346:    490e        .I      LDR      r1,[pc,#56] ; [0x8000380] = 0xfef6ffff
        0x08000348:    4008        .@      ANDS     r0,r0,r1
        0x0800034a:    490b        .I      LDR      r1,[pc,#44] ; [0x8000378] = 0x40021000
        0x0800034c:    6008        .`      STR      r0,[r1,#0]
        0x0800034e:    4608        .F      MOV      r0,r1
        0x08000350:    6800        .h      LDR      r0,[r0,#0]
        0x08000352:    f4202080     ..     BIC      r0,r0,#0x40000
        0x08000356:    6008        .`      STR      r0,[r1,#0]
        0x08000358:    4608        .F      MOV      r0,r1
        0x0800035a:    6840        @h      LDR      r0,[r0,#4]
        0x0800035c:    f42000fe     ...    BIC      r0,r0,#0x7f0000
        0x08000360:    6048        H`      STR      r0,[r1,#4]
        0x08000362:    f44f001f    O...    MOV      r0,#0x9f0000
        0x08000366:    6088        .`      STR      r0,[r1,#8]
        0x08000368:    f7ffff67    ..g.    BL       SetSysClock ; 0x800023a
        0x0800036c:    f04f6000    O..`    MOV      r0,#0x8000000
        0x08000370:    4904        .I      LDR      r1,[pc,#16] ; [0x8000384] = 0xe000ed08
        0x08000372:    6008        .`      STR      r0,[r1,#0]
        0x08000374:    bd10        ..      POP      {r4,pc}
    $d
        0x08000376:    0000        ..      DCW    0
        0x08000378:    40021000    ...@    DCD    1073876992
        0x0800037c:    f8ff0000    ....    DCD    4177461248
        0x08000380:    fef6ffff    ....    DCD    4277600255
        0x08000384:    e000ed08    ....    DCD    3758157064
    $t
    i.UsageFault_Handler
    UsageFault_Handler
        0x08000388:    bf00        ..      NOP      
        0x0800038a:    e7fe        ..      B        0x800038a ; UsageFault_Handler + 2
    i.main
    main
        0x0800038c:    bf00        ..      NOP      
        0x0800038e:    e7fe        ..      B        0x800038e ; main + 2
    $d.realdata
    Region$$Table$$Base
        0x08000390:    080003a0    ....    DCD    134218656
        0x08000394:    20000000    ...     DCD    536870912
        0x08000398:    00000660    `...    DCD    1632
        0x0800039c:    08000128    (...    DCD    134218024
    Region$$Table$$Limit

** Section #2 'ER_ZI' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 1632 bytes (alignment 8)
    Address: 0x20000000


** Section #3 '.debug_abbrev' (SHT_PROGBITS)
    Size   : 1476 bytes


** Section #4 '.debug_frame' (SHT_PROGBITS)
    Size   : 920 bytes


** Section #5 '.debug_info' (SHT_PROGBITS)
    Size   : 3920 bytes


** Section #6 '.debug_line' (SHT_PROGBITS)
    Size   : 1412 bytes


** Section #7 '.debug_loc' (SHT_PROGBITS)
    Size   : 296 bytes


** Section #8 '.debug_macinfo' (SHT_PROGBITS)
    Size   : 2264 bytes


** Section #9 '.debug_pubnames' (SHT_PROGBITS)
    Size   : 402 bytes


** Section #10 '.symtab' (SHT_SYMTAB)
    Size   : 4704 bytes (alignment 4)
    String table #11 '.strtab'
    Last local symbol no. 169


** Section #11 '.strtab' (SHT_STRTAB)
    Size   : 5220 bytes


** Section #12 '.note' (SHT_NOTE)
    Size   : 24 bytes (alignment 4)


** Section #13 '.comment' (SHT_PROGBITS)
    Size   : 16276 bytes


** Section #14 '.shstrtab' (SHT_STRTAB)
    Size   : 156 bytes


