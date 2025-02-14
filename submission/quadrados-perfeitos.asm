
loop    LD      N_end
        SB      N_cur
        JZ      e_loop

        LD      N_cur
        ML      val_2
        AD      val_1
        AD      prev

        MM      prev
addr    MM      /101
        LD      addr
        AD      val_1
        MM      addr

        LD      N_cur
        AD      val_1
        MM      N_cur

        JP      loop

e_loop  HM      =0

N_end   K       =64
N_cur   K       =1
prev    K       =0
val_1   K       =1
val_2   K       =2




        @       /100
        K       =0