module maq_m(
    input reset,
    input clock,
    input enable1hz,
    input incrementa_minuto,
    output logic [3:0] bcd_m_lsd,
    output logic [2:0] bcd_m_msd,
    output logic incrementa_hora
)
