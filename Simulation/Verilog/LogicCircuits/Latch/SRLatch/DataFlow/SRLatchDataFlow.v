module SRLatchDataFlow(notS, notR, Q, notQ);

input notS, notR;
output Q, notQ;

assign Q = ~(notS & notQ);
assign notQ = ~(notR & Q);


endmodule