# 4x4-bit-approx-multiplier
4x4 bit multiplier using approximation techniques

This project is a 4x4 bit approximation mutipiler. 
A normal multiplier would use a bunch of HA;s and FA;s working on their typically defined functions.
In the designed multiplier; the logic and design thought used is :
  First all the normal terms upon multiplication were written(a0b0,a1b0,a2b0,a3b0,a0b1,a1b1,a2b1,a3b1,a0b2,a1b2,a2b2,a3b2,a0b3,a1b3,a2b3,a3b3) and the pairs in them were clubbed into propagate and generate terms.
  ( p = a or b; g = a & b).
  Namely this was done for pairs of (a1b0-a0b1,a2b0-a0b2,a3b0-a0b3,a2b1-a1b2,a3b1-a1b3,a2b3-a3b2)
  g30 and g21 were clubbed to form G1 in the middle column.(G1 = g30 or g21)


approximate half adder ; approximate full adder ; approximate compressors were made using approximation techniques as follows:

approx ha:
    sum = a or b;
    carry = a.b;

approx fa:
     sum = ( a or b ) xor c;
     carry = ( a and b ) or ( b and c );

approx comp:
      sum = ( a xor b ) or ( c xor d );
      carry = ( a and b ) or ( c and d );  

now appha;appfa;comp blocks are used to compute further.

appha is used to add terms of 1st column ( 2 terms)
approx comp is used to add terms of 2nd column(4 terms)
approx comp is used to add terms of 3rd column(4 terms)
approx comp is used to add terms of 4th column(4 terms)
appfa is used to add terms of 5th column(3 terms)
appha is used to add terms of 6th column(2 terms)


Mean Relative Error : was 12.67%
![{430114F1-CFE4-4E3E-B030-BFEDBCBE6244}](https://github.com/user-attachments/assets/8c612cfa-a523-4324-bdd6-634359f58a28)

Utilization Report : 11 LUT;s were used 
![{76870B51-8718-4193-8D7B-BDDED331FB8B}](https://github.com/user-attachments/assets/4b05a205-e030-438d-a04c-4744ffe66b23)
![{02273315-DF09-4CD8-A68B-F2DB7FB2D25F}](https://github.com/user-attachments/assets/4edc9803-8f35-4091-952d-4064077e6722)
![{97DBC1AD-9805-486A-AFE8-283075230500}](https://github.com/user-attachments/assets/12b23a4f-0328-499d-b833-9a59964320e1)
![{0073DB05-3BD7-4196-B9F7-C4E76D415612}](https://github.com/user-attachments/assets/b6dfe6aa-5542-4eb1-85f6-f5cc35ea917e)
![{F0F1C5E3-B01E-4BE7-8526-31A3ECA2B3E9}](https://github.com/user-attachments/assets/6c48383b-f4d2-4d62-875b-42e3fd36c80c)

Power Report (after implementation):
![{EBBA33DE-BCF9-4330-8A76-92D87E954D2B}](https://github.com/user-attachments/assets/9106315d-00bc-4fcb-8055-cd050bceab44)
![{B7521ED9-A105-4B43-A71B-86AAF3F39C60}](https://github.com/user-attachments/assets/43113947-44db-49a8-a054-5bc80fe37dc0)
![{9B03B0BB-E83E-4667-95CA-8209B08D594E}](https://github.com/user-attachments/assets/748ed091-03bc-415e-83a7-a3be67455124)
![{1A28109B-1455-42E1-AB08-054CC9450D5A}](https://github.com/user-attachments/assets/b6b10b90-c40a-4d24-8665-ed3e93fce8c5)
![{1FDD4E24-1F2F-46F3-8008-5857D90C7665}](https://github.com/user-attachments/assets/8f2f57ff-a94b-41b6-ac52-009ba4e9de69)














