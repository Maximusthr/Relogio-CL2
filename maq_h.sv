module maq_h(
    input reset,
    input clock,
    input enable1hz,
    input incrementa_hora,
    output logic [3:0] bcd_h_lsd,
    output logic [1:0] bcd_h_msd,
)
