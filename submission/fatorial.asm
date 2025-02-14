;p fatorial.asm
        @       /000
        SC      fact
        HM      /000

        @       /100
N       K       =0001
factN   K       =0000
val_1   K       =0001

        @       /200
fact    K       /0000 ;ininio da subrotina

        LD      N
        MM      factN
        JZ      case_0

loop    LD      N     
        SB      val_1
        JZ      e_loop
        MM      N
        ML      factN
        MM      factN
        JP      loop


        
case_0  LV      =001
        MM      factN

e_loop  RS      fact

