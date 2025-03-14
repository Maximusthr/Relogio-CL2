module maq_h(
    input maqh_reset,
    input maqh_clock,
    input maqh_enable,
    input maqh_incremento,
    output logic [3:0] maqh_lsd,
    output logic [1:0] maqh_msd
);

// lsd - least significant digit
// msd - most significant digit

always_ff @(posedge maqh_clock)
    begin
        if (!maqh_reset)
            begin
                maqh_lsd <= 0;
                maqh_msd <= 0;
            end
        else if (maqh_incremento)
            begin
                if (maqh_msd == 2'd2 && maqh_lsd == 4'd3) // verificar se possui bug na virada do 23 para 00
                    begin
                        maqh_msd <= 0;
                        maqh_lsd <= 0;
                    end
                else if (maqh_lsd == 4'd9)
                    begin
                        maqh_msd <= maqh_msd + 1'd1;
                        maqh_lsd <= 0;
                    end
                else
                    begin
                        maqh_lsd <= maqh_lsd + 1'd1;
                    end
            end
    end
endmodule
