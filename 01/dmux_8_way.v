module dmux_8_way(
    input       in,
    input [2:0] select,
    output      a,
    output      b,
    output      c,
    output      d,
    output      e,
    output      f,
    output      g,
    output      h
);
    wire low, high;
    dmux split(in, select[2], low, high);
    dmux_4_way dmux_low_nibble(low, select[1:0], a, b, c, d);
    dmux_4_way dmux_high_nibble(high, select[1:0], e, f, g, h);

endmodule