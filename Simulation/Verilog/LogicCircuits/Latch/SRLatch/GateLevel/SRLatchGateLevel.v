module SRLatchGateLevel(notS,notR,Q,notQ);

input notS, notR;
output Q, notQ;

nand(Q, notS, notQ);
nand(notQ, notR, Q);

endmodule