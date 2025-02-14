;p fatorial.asm
        @       /000
        SC      fact    ;chamar fatorial
        HM      /000    ;terminar execucao

fact    K       /0000   ;ininio da subrotina

        LD      N       ;N para AC
        MM      factN   ;N para N!
        JZ      case_0  ;excecao para n=0

loop    LD      N       ;loop principal/ N para AC
        SB      val_1   ;N-1
        JZ      e_loop  ;se N era 1 sai do loop
        MM      N       ;N-1 para N
        ML      factN   ;(N-1)*N
        MM      factN   ;(N-1)*N para AC
        JP      loop    ;entrar no loop de novo
        
case_0  LV      =001
        MM      factN

e_loop  RS      fact

        @       /100    ;data section
N       K       =0001   ;N
factN   K       =0000   ;N!
val_1   K       =0001   ;valor literal 1



