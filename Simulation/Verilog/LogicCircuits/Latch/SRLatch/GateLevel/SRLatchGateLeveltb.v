module SRLatchGateLeveltb;
reg A,B;
wire C;
wire D;
SRLatchGateLevel dut(.notS(A), .notR(B), .Q(C), .notQ(D));
initial
begin
#5 A =0; B=0;
#5 A =0; B=1;
#5 A =1; B=0;
#5 A =1; B=1;
end
initial
begin
$monitor("simtime = %g, A =%b, B =%b, C =%b, D =%b", $time,A,B,C,D);
end
endmodule