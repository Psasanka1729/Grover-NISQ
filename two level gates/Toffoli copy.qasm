OPENQASM 2.0;
include "qelib1.inc";
gate mcx q0,q1,q2,q3 { h q3; p(pi/8) q0; p(pi/8) q1; p(pi/8) q2; p(pi/8) q3; cx q0,q1; p(-pi/8) q1; cx q0,q1; cx q1,q2; p(-pi/8) q2; cx q0,q2; p(pi/8) q2; cx q1,q2; p(-pi/8) q2; cx q0,q2; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; h q3; }

gate mccx q0, q1, q2, q3, q4 {h q4; p(pi/4) q3; cx q3,q4; p(-pi/4) q4; cx q3,q4; h q3; p(pi/4) q4; p(pi/4) q3; cx q2,q3; p(-pi/4) q3; h q3; cx q0,q3; p(pi/4) q3; cx q1,q3; p(-pi/4) q3;
cx q0,q3; p(pi/4) q3; cx q1,q3; p(-pi/4) q3; h q3; p(pi/4) q3; cx q2,q3; p(-pi/4) q3; h q3;
p(-pi/4) q3; cx q3,q4; p(pi/4) q4; cx q3,q4; h q3; p(-pi/4) q4; p(-7*pi/4) q3; cx q2,q3; p(-pi/4) q3; h q3; p(-7*pi/4) q3; cx q1,q3; p(-pi/4) q3; cx q0,q3; p(pi/4) q3; cx q1,q3; p(-pi/4) q3;
cx q0,q3; p(pi/16) q0; h q3; p(-7*pi/4) q3; cx q0,q4; cx q2,q3; p(-pi/16) q4; p(-pi/4) q3;
cx q0,q4; cx q0,q1; h q3; p(pi/16) q4; p(-pi/16) q1; cx q1,q4 p(pi/16) q4; cx q1,q4;
cx q0,q1; p(-pi/16) q4; p(pi/16) q1; cx q1,q4; p(-pi/16) q4; cx q1,q4; cx q1,q2; p(pi/16) q4;
p(-pi/16) q2; cx q2,q4; p(pi/16) q4; cx q2,q4; cx q0,q2; p(-pi/16) q4; p(pi/16) q2; 
cx q2,q4; p(-pi/16) q4; cx q2,q4; cx q1,q2; p(-pi/16) q2; cx q2,q4; p(pi/16) q4; cx q2,q4;
cx q0,q2; p(-pi/16) q4; p(pi/16) q2; cx q2,q4; p(-pi/16) q4; cx q2,q4; p(pi/16) q4; h q4; }

qreg q[20];
mcx q[0],q[1],q[2],q[15];
mcx q[3],q[4],q[5],q[16];
mcx q[6],q[7],q[8],q[17];
mcx q[9],q[10],q[11],q[18];
mcx q[12],q[13],q[15],q[19];
