
loop    LD      N_end   ;Loop principal/Bloco: checa se N_cur = N_end
        SB      N_cur   
        JZ      e_loop

        LD      N_cur   ;Bloco: Calcula n^2
        ML      val_2
        AD      val_1
        AD      prev

        MM      prev    ;copia n^2 para prev
addr    MM      /102    ;copia n^2 para o endereco certo

        LD      addr    ;Bloco: incrementa addr em 2 para o proximo valor
        AD      val_2   
        MM      addr

        LD      N_cur   ;Bloco: incrementa N_cur
        AD      val_1
        MM      N_cur

        JP      loop    ;reinicia o loop

e_loop  HM      =0      ;final do loop/Para a execucao

;------------------------------------------------
;Data section
N_end   K       =63
N_cur   K       =0
prev    K       =0
val_1   K       =1
val_2   K       =2



;------------------------------------------------
;Valores serao armazenados nessa regiao
        @       /100
        K       =0