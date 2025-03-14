module maq_m(
    input maqm_reset,
    input maqm_clock,
    input maqm_enable,
    input maqm_incremento,
    output logic [3:0] maqm_lsd,
    output logic [2:0] maqm_msd,
    output logic maqm_incrementahora
);

// lsd - least significant digit
// msd - most significant digit

always_ff @(posedge maqm_clock)
    begin
        if (!maqm_reset)
            begin
                maqm_lsd <= 0;
                maqm_msd <= 0;
                maqm_incrementahora <= 0;
            end
        else if (maqm_enable && maqm_incremento)
            begin
                if (maqm_msd == 3'd5 && maqm_lsd == 4'd9) // verificar se possui bug na virada do 59 para hora
                    begin
                        maqm_msd <= 0;
                        maqm_lsd <= 0;
                        maqm_incrementahora <= 1'd1;
                    end
                else if (maqm_lsd == 4'd9)
                    begin
                        maqm_lsd <= 0;
                        maqm_incrementahora <= 0;
                        maqm_msd <= maqm_msd + 1'd1;
                    end
                else
                    begin
                        maqm_lsd <= maqm_lsd + 1'd1;
                        maqm_incrementahora <= 0;
                    end
            end
        else 
            begin
                maqm_incrementahora <= 0;
            end
    end
endmodule
