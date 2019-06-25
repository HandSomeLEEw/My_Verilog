`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/28 14:06:39
// Design Name: 
// Module Name: parallel_sort
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module parallel_sort(o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,o16,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,clk,rst);
output [7:0] o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,o16;
input [7:0] i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16;
reg [7:0] oc [15:0];
reg [7:0] o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,o16;

input clk;
input rst;

reg a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15;
reg s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15;
reg d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15;
reg f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14,f15;
reg g1,g2,g3,g4,g5,g6,g7,g8,g9,g10,g11,g12,g13,g14,g15;
reg h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13,h14,h15;
reg j1,j2,j3,j4,j5,j6,j7,j8,j9,j10,j11,j12,j13,j14,j15;
reg k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15;
reg l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,l12,l13,l14,l15;
reg z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12,z13,z14,z15;
reg x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15;
reg c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15;
reg v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15;
reg b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15;
reg n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15;
reg m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15;


reg add_start;
reg assign_start;
reg out_start;
reg [3:0] mid1,mid2,mid3,mid4,mid5,mid6,mid7,mid8,mid9,mid10,mid11,mid12,mid13,mid14,mid15,mid16;

always @ (posedge clk)
    begin
        if(rst)
            begin
                {a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15}<=15'b0000_0000_0000_000;
                {s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15}<=15'b0000_0000_0000_000;
                {d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15}<=15'b0000_0000_0000_000;
                {f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14,f15}<=15'b0000_0000_0000_000;
                {g1,g2,g3,g4,g5,g6,g7,g8,g9,g10,g11,g12,g13,g14,g15}<=15'b0000_0000_0000_000;
                {h1,h2,h3,h4,h5,h6,h7,h8,h9,h10,h11,h12,h13,h14,h15}<=15'b0000_0000_0000_000;
                {j1,j2,j3,j4,j5,j6,j7,j8,j9,j10,j11,j12,j13,j14,j15}<=15'b0000_0000_0000_000;
                {k1,k2,k3,k4,k5,k6,k7,k8,k9,k10,k11,k12,k13,k14,k15}<=15'b0000_0000_0000_000;
                {l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,l12,l13,l14,l15}<=15'b0000_0000_0000_000;
                {z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12,z13,z14,z15}<=15'b0000_0000_0000_000;
                {x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15}<=15'b0000_0000_0000_000;
                {c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15}<=15'b0000_0000_0000_000;
                {v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15}<=15'b0000_0000_0000_000;
                {b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15}<=15'b0000_0000_0000_000;
                {n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15}<=15'b0000_0000_0000_000;
                {m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15}<=15'b0000_0000_0000_000;
                {mid1,mid2,mid3,mid4,mid5,mid6,mid7,mid8,mid9,mid10,mid11,mid12,mid13,mid14,mid15,mid16}<=64'b0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000_0000;
                o1<=0;
                o2<=0;
                o3<=0;
                o4<=0;
                o5<=0;
                o6<=0;
                o7<=0;
                o8<=0;
                o9<=0;
                o10<=0;
                o11<=0;
                o12<=0;
                o13<=0;
                o14<=0;
                o15<=0;
                o16<=0;
                add_start<=0;
                assign_start<=0;
                out_start<=0;
            end
        else
            begin
            if(i1>i2) a1<=1'b1;
            else a1<=1'b0;
            if(i1>i3) a2<=1'b1;
            else a2<=1'b0;
            if(i1>i4) a3<=1'b1;
            else a3<=1'b0;
            if(i1>i5) a4<=1'b1;
            else a4<=1'b0;
            if(i1>i6) a5<=1'b1;
            else a5<=1'b0;
            if(i1>i7) a6<=1'b1;
            else a6<=1'b0;      
            if(i1>i8) a7<=1'b1; 
            else a7<=1'b0;
            if(i1>i9) a8<=1'b1;
            else a8<=1'b0;     
            if(i1>i10) a9<=1'b1;
            else a9<=1'b0;
            if(i1>i11) a10<=1'b1;
            else a10<=1'b0;
            if(i1>i12) a11<=1'b1;
            else a11<=1'b0;
            if(i1>i13) a12<=1'b1;
            else a12<=1'b0;
            if(i1>i14) a13<=1'b1;
            else a13<=1'b0;
            if(i1>i15) a14<=1'b1;
            else a11<=1'b0;
            if(i1>i16) a15<=1'b1;
           else a15<=1'b0;
           
           if(i2>i1) s1<=1'b1;
           else s1<=1'b0;
           if(i2>i3) s2<=1'b1;
           else s2<=1'b0;
           if(i2>i4) s3<=1'b1;
           else s3<=1'b0;
           if(i2>i5) s4<=1'b1;
           else s4<=1'b0;
           if(i2>i6) s5<=1'b1;
           else s5<=1'b0;
           if(i2>i7) s6<=1'b1;
           else s6<=1'b0;
           if(i2>i8) s7<=1'b1;
           else s7<=1'b0;
           if(i2>i9) s8<=1'b1;
           else s8<=1'b0;
           if(i2>i10) s9<=1'b1;
           else s9<=1'b0;
           if(i2>i11) s10<=1'b1;
           else s10<=1'b0;
           if(i2>i12) s11<=1'b1;
           else s11<=1'b0;
           if(i2>i13) s12<=1'b1;
           else s12<=1'b0;
           if(i2>i14) s13<=1'b1;
           else s13<=1'b0;
           if(i2>i15) s14<=1'b1;
           else s14<=1'b0;
           if(i2>i16) s15<=1'b1;
           else s15<=1'b0;
           
           if(i3>i1) d1<=1'b1;
           else d1<=1'b0;
           if(i3>i2) d2<=1'b1;
           else d2<=1'b0;
           if(i3>i4) d3<=1'b1;
           else d3<=1'b0;
           if(i3>i5) d4<=1'b1;
           else d4<=1'b0;
           if(i3>i6) d5<=1'b1;
           else d5<=1'b0;
           if(i3>i7) d6<=1'b1;
           else d6<=1'b0;
           if(i3>i8) d7<=1'b1;
           else d7<=1'b0;
           if(i3>i9) d8<=1'b1;
           else d8<=1'b0;
           if(i3>i10) d9<=1'b1;
           else d9<=1'b0;
           if(i3>i11) d10<=1'b1;
           else d10<=1'b0;
           if(i3>i12) d11<=1'b1;
           else d11<=1'b0;
           if(i3>i13) d12<=1'b1;
           else d12<=1'b0;
           if(i3>i14) d13<=1'b1;
           else d13<=1'b0;
           if(i3>i15) d14<=1'b1;
           else d14<=1'b0;
           if(i3>i16) d15<=1'b1;
           else d15<=1'b0;
           
           if(i4>i1) f1<=1'b1;
           else f1<=1'b0;
           if(i4>i2) f2<=1'b1;
           else f2<=1'b0;
           if(i4>i3) f3<=1'b1;
           else f3<=1'b0;
           if(i4>i5) f4<=1'b1;
           else f4<=1'b0;
           if(i4>i6) f5<=1'b1;
           else f5<=1'b0;
           if(i4>i7) f6<=1'b1;
           else f6<=1'b0;
           if(i4>i8) f7<=1'b1;
           else f7<=1'b0;
           if(i4>i9) f8<=1'b1;
           else f8<=1'b0;
           if(i4>i10) f9<=1'b1;
           else f9<=1'b0;
           if(i4>i11) f10<=1'b1;
           else f10<=1'b0;
           if(i4>i12) f11<=1'b1;
           else f11<=1'b0;
           if(i4>i13) f12<=1'b1;
           else f12<=1'b0;
           if(i4>i14) f13<=1'b1;
           else f13<=1'b0;
           if(i4>i15) f14<=1'b1;
           else f14<=1'b0;
           if(i4>i16) f15<=1'b1;
           else f15<=1'b0;
           
           if(i5>i1) g1<=1'b1;
           else g1<=1'b0;
           if(i5>i2) g2<=1'b1;
           else g2<=1'b0;
           if(i5>i3) g3<=1'b1;
           else g3<=1'b0;
           if(i5>i3) g3<=1'b1;
           else g3<=1'b0;
           if(i5>i4) g4<=1'b1;
           else g4<=1'b0;
           if(i5>i6) g5<=1'b1;
           else g5<=1'b0;
           if(i5>i7) g6<=1'b1;
           else g6<=1'b0;
           if(i5>i8) g7<=1'b1;
           else g7<=1'b0;
           if(i5>i9) g8<=1'b1;
           else g8<=1'b0;
           if(i5>i10) g9<=1'b1;
           else g9<=1'b0;
           if(i5>i11) g10<=1'b1;
           else g10<=1'b0;
           if(i5>i12) g11<=1'b1;
           else g11<=1'b0;
           if(i5>i13) g12<=1'b1;
           else g12<=1'b0;
           if(i5>i14) g13<=1'b1;
           else g13<=1'b0;
           if(i5>i15) g14<=1'b1;
           else g14<=1'b0;
           if(i5>i16) g15<=1'b1;
           else g15<=1'b0;
           
           if(i6>i1) h1<=1'b1;
           else h1<=1'b0;
           if(i6>i2) h2<=1'b1;
           else h2<=1'b0;
           if(i6>i3) h3<=1'b1;
           else h3<=1'b0;
           if(i6>i4) h4<=1'b1;
           else h4<=1'b0;
           if(i6>i5) h5<=1'b1;
           else h5<=1'b0;
           if(i6>i7) h6<=1'b1;
           else h6<=1'b0;
           if(i6>i8) h7<=1'b1;
           else h7<=1'b0;
           if(i6>i9) h8<=1'b1;
           else h8<=1'b0;
           if(i6>i10) h9<=1'b1;
           else h9<=1'b0;
           if(i6>i11) h10<=1'b1;
           else h10<=1'b0;
           if(i6>i12) h11<=1'b1;
           else h11<=1'b0;
           if(i6>i13) h12<=1'b1;
           else h12<=1'b0;
           if(i6>i14) h13<=1'b1;
           else h13<=1'b0;
           if(i6>i15) h14<=1'b1;
           else h14<=1'b0;
           if(i6>i16) h15<=1'b1;
           else h15<=1'b0;
           
           if(i7>i1) j1<=1'b1;
           else j1<=1'b0;
           if(i7>i2) j2<=1'b1;
           else j2<=1'b0;
           if(i7>i3) j3<=1'b1;
           else j3<=1'b0;
           if(i7>i4) j4<=1'b1;
           else j4<=1'b0;
           if(i7>i5) j5<=1'b1;
           else j5<=1'b0;
           if(i7>i6) j6<=1'b1;
           else j6<=1'b0;
           if(i7>i8) j7<=1'b1;
           else j7<=1'b0;
           if(i7>i9) j8<=1'b1;
           else j8<=1'b0;
           if(i7>i10) j9<=1'b1;
           else j9<=1'b0;
           if(i7>i11) j10<=1'b1;
           else j10<=1'b0;
           if(i7>i12) j11<=1'b1;
           else j11<=1'b0;
           if(i7>i13) j12<=1'b1;
           else j12<=1'b0;
           if(i7>i14) j13<=1'b1;
           else j13<=1'b0;
           if(i7>i5) j14<=1'b1;
           else j13<=1'b0;
           if(i7>i16) j15<=1'b1;
           else j15<=1'b0;
           
           if(i8>i1) k1<=1'b1;
           else k1<=1'b0;
           if(i8>i2) k2<=1'b1;
           else k2<=1'b0;
           if(i8>i3) k3<=1'b1;
           else k3<=1'b0;
           if(i8>i4) k4<=1'b1;
           else k4<=1'b0;
           if(i8>i5) k5<=1'b1;
           else k5<=1'b0;
           if(i8>i6) k6<=1'b1;
           else k6<=1'b0;
           if(i8>i7) k7<=1'b1;
           else k7<=1'b0;
           if(i8>i9) k8<=1'b1;
           else k8<=1'b0;
           if(i8>i10) k9<=1'b1;
           else k9<=1'b0;
           if(i8>i11) k10<=1'b1;
           else k10<=1'b0;
           if(i8>i12) k11<=1'b1;
           else k11<=1'b0;
           if(i8>i13) k12<=1'b1;
           else k12<=1'b0;
           if(i8>i14) k13<=1'b1;
           else k13<=1'b0;
           if(i8>i15) k14<=1'b1;
           else k14<=1'b0;
           if(i8>i16) k15<=1'b1;
           else k15<=1'b0;
           
           if(i9>i1) l1<=1'b1;
           else l1<=1'b0;
           if(i9>i2) l2<=1'b1;
           else l2<=1'b0;
           if(i9>i3) l3<=1'b1;
           else l3<=1'b0;
           if(i9>i4) l4<=1'b1;
           else l4<=1'b0;
           if(i9>i5) l5<=1'b1;
           else l5<=1'b0;
           if(i9>i6) l6<=1'b1;
           else l6<=1'b0;
           if(i9>i7) l7<=1'b1;
           else l7<=1'b0;
           if(i9>i8) l8<=1'b1;
           else l8<=1'b0;
           if(i9>i10) l9<=1'b1;
           else l9<=1'b0;
           if(i9>i11) l10<=1'b1;
           else l10<=1'b0;
           if(i9>i12) l11<=1'b1;
           else l11<=1'b0;
           if(i9>i13) l12<=1'b1;
           else l12<=1'b0;
           if(i9>i14) l13<=1'b1;
           else l13<=1'b0;
           if(i9>i15) l14<=1'b1;
           else l14<=1'b0;
           if(i9>i16) l15<=1'b1;
           else l15<=1'b0;
           
           if(i10>i1) z1<=1'b1;
           else z1<=1'b0;
           if(i10>i2) z2<=1'b1;
           else z2<=1'b0;
           if(i10>i3) z3<=1'b1;
           else z3<=1'b0;
           if(i10>i4) z4<=1'b1;
           else z4<=1'b0;
           if(i10>i5) z5<=1'b1;
           else z5<=1'b0;
           if(i10>i6) z6<=1'b1;
           else z6<=1'b0;
           if(i10>i7) z7<=1'b1;
           else z7<=1'b0;
           if(i10>i8) z8<=1'b1;
           else z8<=1'b0;
           if(i10>i9) z9<=1'b1;
           else z9<=1'b0;
           if(i10>i11) z10<=1'b1;
           else z10<=1'b0;
           if(i10>i12) z11<=1'b1;
           else z11<=1'b0;
           if(i10>i13) z12<=1'b1;
           else z12<=1'b0;
           if(i10>i14) z13<=1'b1;
           else z13<=1'b0;
           if(i10>i15) z14<=1'b1;
           else z14<=1'b0;
           if(i10>i16) z15<=1'b1;
           else z15<=1'b0;
           
           if(i11>i1) x1<=1'b1;
           else x1<=1'b0;
           if(i11>i2) x2<=1'b1;
           else x2<=1'b0;
           if(i11>i3) x3<=1'b1;
           else x3<=1'b0;
           if(i11>i4) x4<=1'b1;
           else x4<=1'b0;
           if(i11>i5) x5<=1'b1;
           else x5<=1'b0;
           if(i11>i6) x6<=1'b1;
           else x6<=1'b0;
           if(i11>i7) x7<=1'b1;
           else x7<=1'b0;
           if(i11>i8) x8<=1'b1;
           else x8<=1'b0;
           if(i11>i9) x9<=1'b1;
           else x9<=1'b0;
           if(i11>i10) x10<=1'b1;
           else x10<=1'b0;
           if(i11>i12) x11<=1'b1;
           else x11<=1'b0;
           if(i11>i3) x12<=1'b1;
           else x12<=1'b0;
           if(i11>i14) x13<=1'b1;
           else x13<=1'b0;
           if(i11>i15) x14<=1'b1;
           else x14<=1'b0;
           if(i11>i16) x15<=1'b1;
           else x15<=1'b0;
           
           if(i12>i1) c1<=1'b1;
           else c1<=1'b0;
           if(i12>i2) c2<=1'b1;
           else c2<=1'b0;
           if(i12>i3) c3<=1'b1;
           else c3<=1'b0;
           if(i12>i4) c4<=1'b1;
           else c4<=1'b0;
           if(i12>i5) c5<=1'b1;
           else c5<=1'b0;
           if(i12>i6) c6<=1'b1;
           else c6<=1'b0;
           if(i12>i7) c7<=1'b1;
           else c7<=1'b0;
           if(i12>i8) c8<=1'b1;
           else c8<=1'b0;
           if(i12>i9) c9<=1'b1;
           else c9<=1'b0;
           if(i12>i10) c10<=1'b1;
           else c10<=1'b0;
           if(i12>i11) c11<=1'b1;
           else c11<=1'b0;
           if(i12>i13) c12<=1'b1;
           else c12<=1'b0;
           if(i12>i14) c13<=1'b1;
           else c13<=1'b0;
           if(i12>i15) c14<=1'b1;
           else c14<=1'b0;
           if(i12>i16) c15<=1'b1;
           else c15<=1'b0;
           
           if(i13>i1) v1<=1'b1;
           else v1<=1'b0;
           if(i13>i2) v2<=1'b1;
           else v2<=1'b0;
           if(i13>i3) v3<=1'b1;
           else v3<=1'b0;
           if(i13>i4) v4<=1'b1;
           else v4<=1'b0;
           if(i13>i5) v5<=1'b1;
           else v5<=1'b0;
           if(i13>i6) v6<=1'b1;
           else v6<=1'b0;
           if(i13>i7) v7<=1'b1;
           else v7<=1'b0;
           if(i13>i8) v8<=1'b1;
           else v8<=1'b0;
           if(i13>i9) v9<=1'b1;
           else v9<=1'b0;
           if(i13>i10) v10<=1'b1;
           else v10<=1'b0;
           if(i13>i11) v11<=1'b1;
           else v11<=1'b0;
           if(i13>i12) v12<=1'b1;
           else v12<=1'b0;
           if(i13>i14) v13<=1'b1;
           else v13<=1'b0;
           if(i13>i15) v14<=1'b1;
           else v14<=1'b0;
           if(i13>i16) v15<=1'b1;
           else v15<=1'b0;
           
           if(i14>i1) b1<=1'b1;
           else b1<=1'b0;
           if(i14>i2) b2<=1'b1;
           else b2<=1'b0;
           if(i14>i3) b3<=1'b1;
           else b3<=1'b0;
           if(i14>i4) b4<=1'b1;
           else b4<=1'b0;
           if(i14>i5) b5<=1'b1;
           else b5<=1'b0;
           if(i14>i6) b6<=1'b1;
           else b6<=1'b0;
           if(i14>i7) b7<=1'b1;
           else b7<=1'b0;
           if(i14>i8) b8<=1'b1;
           else b8<=1'b0;
           if(i14>i9) b9<=1'b1;
           else b9<=1'b0;
           if(i14>i10) b10<=1'b1;
           else b10<=1'b0;
           if(i14>i11) b11<=1'b1;
           else b11<=1'b0;
           if(i14>i12) b12<=1'b1;
           else b12<=1'b0;
           if(i14>i13) b13<=1'b1;
           else b13<=1'b0;
           if(i14>i15) b14<=1'b1;
           else b14<=1'b0;
           if(i14>i16) b15<=1'b1;
           else b15<=1'b0;

           if(i15>i1) n1<=1'b1;
           else n1<=1'b0;
           if(i15>i2) n2<=1'b1;
           else n2<=1'b0;
           if(i15>i3) n3<=1'b1;
           else n3<=1'b0;
           if(i15>i4) n4<=1'b1;
           else n4<=1'b0;
           if(i15>i5) n5<=1'b1;
           else n5<=1'b0;
           if(i15>i6) n6<=1'b1;
           else n6<=1'b0;
           if(i15>i7) n7<=1'b1;
           else n7<=1'b0;
           if(i15>i8) n8<=1'b1;
           else n8<=1'b0;
           if(i15>i9) n9<=1'b1;
           else n9<=1'b0;
           if(i15>i10) n10<=1'b1;
           else n10<=1'b0;
           if(i15>i11) n11<=1'b1;
           else n11<=1'b0;
           if(i15>i12) n12<=1'b1;
           else n12<=1'b0;
           if(i15>i13) n13<=1'b1;
           else n13<=1'b0;
           if(i15>i14) n14<=1'b1;
           else n14<=1'b0;
           if(i15>i16) n15<=1'b1;
           else n15<=1'b0;

           if(i16>i1) m1<=1'b1;
           else m1<=1'b0;
           if(i16>i2) m2<=1'b1;
           else m2<=1'b0;
           if(i16>i3) m3<=1'b1;
           else m3<=1'b0;
           if(i16>i4) m4<=1'b1;
           else m4<=1'b0;
           if(i16>i5) m5<=1'b1;
           else m5<=1'b0;
           if(i16>i6) m6<=1'b1;
           else m6<=1'b0;
           if(i16>i7) m7<=1'b1;
           else m7<=1'b0;
           if(i16>i8) m8<=1'b1;
           else m8<=1'b0;
           if(i16>i9) m9<=1'b1;
           else m9<=1'b0;
           if(i16>i10) m10<=1'b1;
           else m10<=1'b0;
           if(i16>i11) m11<=1'b1;
           else m11<=1'b0;
           if(i16>i12) m12<=1'b1;
           else m12<=1'b0;
           if(i16>i13) m13<=1'b1;
           else m13<=1'b0;
           if(i16>i14) m14<=1'b1;
           else m14<=1'b0;
           if(i16>i15) m15<=1'b1;
           else m15<=1'b0;
        end
        add_start=1;
    end

    always @(posedge clk ) 
    begin
    	if(add_start==1) 
    	begin
    	mid1<=a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12+a13+a14+a15;
    	mid2<=s1+s2+s3+s4+s5+s6+s7+s8+s9+s10+s11+s12+s13+s14+s15;
    	mid3<=d1+d2+d3+d4+d5+d6+d7+d8+d9+d10+d11+d12+d13+d14+d15;
		mid4<=f1+f2+f3+f4+f5+f6+f7+f8+f9+f10+f11+f12+f13+f14+f15;
		mid5<=g1+g2+g3+g4+g5+g6+g7+g8+g9+g10+g11+g12+g13+g14+g15;
		mid6<=h1+h2+h3+h4+h5+h6+h7+h8+h9+h10+h11+h12+h13+h14+h15;
		mid7<=j1+j2+j3+j4+j5+j6+j7+j8+j9+j10+j11+j12+j13+j14+j15;
		mid8<=k1+k2+k3+k4+k5+k6+k7+k8+k9+k10+k11+k12+k13+k14+k15;
		mid9<=l1+l2+l3+l4+l5+l6+l7+l8+l9+l10+l11+l12+l13+l14+l15;
		mid10<=z1+z2+z3+z4+z5+z6+z7+z8+z9+z10+z11+z12+z13+z14+z15;
		mid11<=x1+x2+x3+x4+x5+x6+x7+x8+x9+x10+x11+x12+x13+x14+x15;
		mid12<=c1+c2+c3+c4+c5+c6+c7+c8+c9+c10+c11+c12+c13+c14+c15;
		mid13<=v1+v2+v3+v4+v5+v6+v7+v8+v9+v10+v11+v12+v13+v14+v15;
		mid14<=b1+b2+b3+b4+b5+b6+b7+b8+b9+b10+b11+b12+b13+b14+b15;
		mid15<=n1+n2+n3+n4+n5+n6+n7+n8+n9+n10+n11+n12+n13+n14+n15;
		mid16<=m1+m2+m3+m4+m5+m6+m7+m8+m9+m10+m11+m12+m13+m14+m15;
    	end
    	assign_start=1;
    end

    always @(posedge clk) 
    begin
    	if(assign_start==1) 
    	begin
    	oc[mid1]<=i1;
    	oc[mid2]<=i2;
    	oc[mid3]<=i3;
    	oc[mid4]<=i4;
    	oc[mid5]<=i5;
    	oc[mid6]<=i6;
    	oc[mid7]<=i7;
    	oc[mid8]<=i8;
    	oc[mid9]<=i9;
    	oc[mid10]<=i10;
    	oc[mid11]<=i11;
    	oc[mid12]<=i12;
    	oc[mid13]<=i13;
    	oc[mid14]<=i14;
    	oc[mid15]<=i15;
    	oc[mid16]<=i16;
    	end
    	out_start=1;
    end

    always @(posedge clk) 
    begin 
    	if(out_start==1) 
    	begin
    	o1<=oc[0];
		o2<=oc[1];
		o3<=oc[2];
		o4<=oc[3];
		o5<=oc[4];
		o6<=oc[5];
		o7<=oc[6];
		o8<=oc[7];
		o9<=oc[8];
		o10<=oc[9];
		o11<=oc[10];
		o12<=oc[11];
		o13<=oc[12];
		o14<=oc[13];
		o15<=oc[14];
		o16<=oc[15];
    	end
    end

endmodule
