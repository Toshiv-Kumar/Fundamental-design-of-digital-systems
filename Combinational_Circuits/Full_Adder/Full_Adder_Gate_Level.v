module full_adder_gatelevel(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
wire x1, a_and_b, b_and_c, a_and_c;
xor U1(x1, a, b);
xor U2(sum, x1, cin);
and U3(a_and_b, a, b);
and U4(b_and_c, b, cin);
and U5(a_and_c, a, cin);
or  U6(cout, a_and_b, b_and_c, a_and_c);
endmodule
