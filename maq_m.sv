module maq_m(
    input reset,
    input clock,
    input enable1hz,
    input incrementa_minuto,
    output logic [3:0] bcd_m_lsd,
    output logic [2:0] bcd_m_msd,
    output logic incrementa_hora
)

// lsd - least significant digit
// msd - most significant digit

always_ff @(posedge clock)
    begin
        if (reset)
            begin
                bcd_m_lsd <= 0;
                bcd_m_msd <= 0;
                incrementa_hora <= 0;
            end
        else if (enable1hz && incrementa_minuto)
            begin
                if (bcd_m_lsd == 4'd9)
                    begin
                        bcd_m_msd <= bcd_m_msd + 1'd1;
                        bcd_m_lsd <= 0;
                    end
                else if (bcd_m_msd == 3'd5 && bcd_m_lsd == 4'd9) // verificar se possui bug na virada do 59 para hora
                    begin
                        bcd_m_msd <= 0;
                        bcd_m_lsd <= 0;
                        incrementa_hora <= 1'd1;
                    end
                else
                    begin
                        bcd_m_lsd <= bcd_m_lsd + 1'd1;
                        incrementa_hora <= 0;
                    end
            end
    end
endmodule
