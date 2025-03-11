// modulo segundos

module maq_s(
    input reset,
    input clock,
    input enable1hz,
    output logic [3:0] bcd_s_lsd,
    output logic [2:0] bcd_s_msd,
    output logic incrementa_minuto
)

// lsd - least significant digit
// msd - most significant digit

always_ff @(posedge clock)
    begin
        if (reset)
            begin
                bcd_s_lsd <= 0;
                bcd_s_msd <= 0;
                incrementa_minuto <= 0;
            end
        else if (enable1hz)
            begin
                if (bcd_s_lsd == 4'd9)
                    begin
                        bcd_s_msd <= bcd_s_msd + 1'd1;
                        bcd_s_lsd <= 0;
                    end
                else if (bcd_s_msd == 4'd5 && bcd_s_lsd == 4'd9) // verificar se possui bug na virada do 59 para 00 e 1 minuto
                    begin
                        bcd_s_msd <= 0;
                        bcd_s_lsd <= 0;
                        incrementa_minuto <= 1'd1;
                    end
                else
                    begin
                        bcd_s_lsd <= bcd_s_lsd + 1'd1;
                        incrementa_minuto <= 0;
                    end
            end
    end
endmodule
