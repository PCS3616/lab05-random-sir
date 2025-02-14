        GD      /000    ;Pega N1
        SB      VAL1    ;converte
        MM      N1      ;N1 para N1
        GD      /000    ;Pega espacos e joga fora
        GD      /000    ;Pega N2
        SB      VAL1    ;converte
        AD      N1      ;Adiciona N1
        MM      SUM_RAW ;Armazena em SUM_RAW
        DV      LIT_16  ;Divide por 16
        ML      LIT_16  ;Multiplica por 16/deixa um zero no digito menos sig
        SB      SUM_RAW ;Obtemos -Ultimo digito
        AD      LIT_9   ;Somamos 9
        JN      HEXTOD  ;Caso Ultimo digito > 9
        
PRINT   AD      VAL1    ;converte
        PD      /100    ;imprime N1+N2
        HM      =0      ;termina execucao

;------------------------------------------------
;Lida com o caso do vai-um
HEXTOD  LD      SUM_RAW
        SB      VAL2
        AD      VAL3
        JP      PRINT

;------------------------------------------------
;Data section
VAL1    K       /3030
VAL2    K       /000A
VAL3    K       /0100
N1      K       =0
LIT_16  K       =16
LIT_9   K       =9    
SUM_RAW K       =0
