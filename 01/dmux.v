module dmux(
    input  in,
    input  select,
    output a,
    output b
);
		assign b = select & in;
		assign a = in & ~select;
		

endmodule