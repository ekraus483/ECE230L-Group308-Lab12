module binary(
    input w, clk, rst,
    output z,
    output [2:0] State
);

    wire [2:0] Next;

    dff zero(
        .D(Next[0]),
        .Default(1'b0),
        .clk(clk),
        .Q(State[0]),
        .reset(rst)
    );

    dff one(
        .D(Next[1]),
        .Default(1'b0),
        .clk(clk),
        .Q(State[1]),
        .reset(rst)
    );
    
    dff two(
        .D(Next[2]),
        .Default(1'b0),
        .clk(clk),
        .Q(State[2]),
        .reset(rst)
    );

    assign z = State[2] | State == 2;
    
    assign Next[0] = (~w | ~State[1] | ~State[0]) & (w | ~State[0] | State[1]) & (w | State[0] | ~State[1] | State[2]) & (~w | State[0] | State[1] | ~State[2]);
    assign Next[1] = w & ~State[2] & ~State[1] | ~State[0] & State[1] & ~State[2] | ~w & State[0] & ~State[1];
    assign Next[2] = w & (State == 4 | State == 3);

endmodule