        GD      /000
        SB      VAL1
        MM      N1
        GD      /000
        GD      /000
        SB      VAL1
        AD      N1
        MM      SUM_RAW
        DV      LIT_16
        ML      LIT_16
        SB      SUM_RAW
        AD      LIT_9
        JN      HEXTOD
        
PRINT   AD      VAL1
        PD      /100 ; Mostra 2 bytes (palavra)
        HM      =0

HEXTOD  LD      SUM_RAW
        SB      VAL2
        AD      VAL3
        JP      PRINT


VAL1    K       /3030
VAL2    K       /000A
VAL3    K       /0100
LIT_16  K       =16
N1      K       =0
SUM_RAW K       =0
LIT_9   K       =9    