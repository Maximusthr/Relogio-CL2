module maq_h(
    input reset,
    input clock,
    input enable1hz,
    input incrementa_hora,
    output logic [3:0] bcd_h_lsd,
    output logic [1:0] bcd_h_msd,
)

// lsd - least significant digit
// msd - most significant digit

always_ff @(posedge clock)
    begin
        if (reset)
            begin
                bcd_h_lsd <= 0;
                bcd_h_msd <= 0;
            end
        else if (enable1hz && incrementa_hora)
            begin
                if (bcd_h_lsd == 4'd9)
                    begin
                        bcd_h_msd <= bcd_h_msd + 1'd1;
                        bcd_h_lsd <= 0;
                    end
                else if (bcd_h_msd == 2'd2 && bcd_h_lsd == 2'd3) // verificar se possui bug na virada do 23 para 00
                    begin
                        bcd_h_msd <= 0;
                        bcd_h_lsd <= 0;
                    end
                else
                    begin
                        bcd_h_lsd <= bcd_h_lsd + 1'd1;
                    end
            end
    end
endmodule
