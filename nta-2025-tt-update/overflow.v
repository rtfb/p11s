module overflow (
    input wire inc_overflowed,
    input wire add_overflowed,
    input wire inc_op,
    input wire add_op,
    output wire overflow_flag,
);
    wire any_op = inc_op & add_op;
    wire inc_of = inc_op & inc_overflowed;
    wire add_of = add_op & add_overflowed;
    assign overflow_flag = any_op & inc_of & add_of;
endmodule
