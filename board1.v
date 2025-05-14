`timescale 1ns / 1ps

module fourbitm(input [3:0] a, input [3:0] b, output [7:0] out);
   wire m;
   wire x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,p10,g10,p20,g20,p30,g30,p21,g21,p31,g31,p23,g23,G1,c1,c2,c3,c4,c5;
   assign m=0;
   
 
   assign out[0] = a[0] & b[0];
   assign x2 = a[1] & b[0];
   assign x3 = a[0] & b[1];
   assign x4 = a[2] & b[0];
   assign x5 = a[0] & b[2];
   assign x6 = a[1] & b[1];
   assign x7 = a[3] & b[0];
   assign x8 = a[0] & b[3];
   assign x9 = a[2] & b[1];
   assign x10 = a[1] & b[2];
   assign x11 = a[3] & b[1];
   assign x12 = a[1] & b[3];
   assign x13 = a[2] & b[2];
   assign x14 = a[3] & b[2];
   assign x15 = a[2] & b[3];
   assign x16 = a[3] & b[3];
 
   
   assign p10 = x2 | x3;
   assign g10 = x2 & x3;
   assign p20 = x4 | x5;
   assign g20 = x4 & x5;
   assign p30 = x7 | x8;
   assign g30 = x7 & x8;
   assign p21 = x9 | x10;
   assign g21 = x9 & x10;
   assign p31 = x11 | x12;
   assign g31 = x11 & x12;
   assign p23 = x15 | x14;
   assign g23 = x15 & x14;
   assign G1 = g30 | g21;

   
   appha i1(p10,g10,out[1],c1);
   comp  i2(p20,g20,x6,c1,out[2],c2);
   comp  i3(p30,G1,p21,c2,out[3],c3);
   comp  i4(p31,g31,x13,c3,out[4],c4);
   appfa i5(p23,g23,c4,out[5],c5);
   appha i6(x16,c5,out[6],out[7]);
   
endmodule


module appha( input a,input b, output sum, output carry);
    or(sum,a,b);
    and(carry,a,b);
endmodule

module appfa( input a, input b, input c, output sum, output carry);
       assign sum = (a + b)^c;
       assign carry = (a & b)+(b & c)  ;
endmodule 

module comp( input a, input b, input c, input d, output sum, output carry);
       assign sum = (a^b)+(c^d);
       assign carry = (a & b)+(c & d);
endmodule







