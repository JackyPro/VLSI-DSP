
{
Command: %s
53*	vivadotcl2J
6synth_design -top Top -part xc7z020clg400-1 -max_dsp 02default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px? 
~
CUser specified maximum number of block DSP allowed in design is %s
139*	vivadotcl2
02default:defaultZ4-287h px? 
V
Loading part %s157*device2#
xc7z020clg400-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
169082default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1021.160 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
Top2default:default2
 2default:default2?
tC:/Xilinx/Vivado2020.1/Vivado/2020.1/2020_VSP/Lab11/architecture/lab11.srcs/sources_1/imports/architecture/Top_sol.v2default:default2
82default:default8@Z8-6157h px? 
Y
%s
*synth2A
-	Parameter w_i bound to: 10 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter w_c bound to: 12 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter w_o bound to: 24 - type: integer 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter c2 bound to: 12'sb011101100100 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter c4 bound to: 12'sb010110101000 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter c6 bound to: 12'sb001100001111 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter c2_ bound to: 12'sb100010011100 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter c4_ bound to: 12'sb101001011000 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter c6_ bound to: 12'sb110011110001 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Top2default:default2
 2default:default2
12default:default2
12default:default2?
tC:/Xilinx/Vivado2020.1/Vivado/2020.1/2020_VSP/Lab11/architecture/lab11.srcs/sources_1/imports/architecture/Top_sol.v2default:default2
82default:default8@Z8-6155h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1021.160 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1021.160 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1021.160 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0052default:default2
1021.1602default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2?
xC:/Xilinx/Vivado2020.1/Vivado/2020.1/2020_VSP/Lab11/architecture/lab11.srcs/constrs_1/imports/architecture/lab11_xdc.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2?
xC:/Xilinx/Vivado2020.1/Vivado/2020.1/2020_VSP/Lab11/architecture/lab11.srcs/constrs_1/imports/architecture/lab11_xdc.xdc2default:default8Z20-178h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1021.1602default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0072default:default2
1021.1602default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Constraint Validation : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1021.160 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7z020clg400-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1021.160 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1021.160 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1021.160 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               24 Bit    Registers := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Debug: swapped A/B pins for adder 000002B229A9E390
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Debug: swapped A/B pins for adder 000002B22CA56CB0
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Debug: swapped A/B pins for adder 000002B22CA56CB0
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: Generating DSP p41, operation Mode is: (A:0x5a8)*B2.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: register aa3_reg is absorbed into DSP p41.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator p41 is absorbed into DSP p41.
2default:defaulth p
x
? 
r
%s
*synth2Z
FDSP Report: Generating DSP zz0, operation Mode is: PCIN+(A:0x5a8)*B2.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: register aa0_reg is absorbed into DSP zz0.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator zz0 is absorbed into DSP zz0.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator p11 is absorbed into DSP zz0.
2default:defaulth p
x
? 
r
%s
*synth2Z
FDSP Report: Generating DSP zz0, operation Mode is: PCIN+(A:0x5a8)*B2.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: register aa2_reg is absorbed into DSP zz0.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator zz0 is absorbed into DSP zz0.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator p31 is absorbed into DSP zz0.
2default:defaulth p
x
? 
x
%s
*synth2`
LDSP Report: Generating DSP z0_reg, operation Mode is: (PCIN+(A:0x5a8)*B2)'.
2default:defaulth p
x
? 
f
%s
*synth2N
:DSP Report: register aa1_reg is absorbed into DSP z0_reg.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register z0_reg is absorbed into DSP z0_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator zz0 is absorbed into DSP z0_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator p21 is absorbed into DSP z0_reg.
2default:defaulth p
x
? 
r
%s
*synth2Z
FDSP Report: Generating DSP p42, operation Mode is: (A:0x3ffff89c)*B2.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: register aa3_reg is absorbed into DSP p42.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator p42 is absorbed into DSP p42.
2default:defaulth p
x
? 
r
%s
*synth2Z
FDSP Report: Generating DSP zz2, operation Mode is: PCIN+(A:0x764)*B2.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: register aa0_reg is absorbed into DSP zz2.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator zz2 is absorbed into DSP zz2.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator p12 is absorbed into DSP zz2.
2default:defaulth p
x
? 
w
%s
*synth2_
KDSP Report: Generating DSP zz2, operation Mode is: PCIN+(A:0x3ffffcf1)*B2.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: register aa2_reg is absorbed into DSP zz2.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator zz2 is absorbed into DSP zz2.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator p32 is absorbed into DSP zz2.
2default:defaulth p
x
? 
x
%s
*synth2`
LDSP Report: Generating DSP z2_reg, operation Mode is: (PCIN+(A:0x30f)*B2)'.
2default:defaulth p
x
? 
f
%s
*synth2N
:DSP Report: register aa1_reg is absorbed into DSP z2_reg.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register z2_reg is absorbed into DSP z2_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator zz2 is absorbed into DSP z2_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator p22 is absorbed into DSP z2_reg.
2default:defaulth p
x
? 
m
%s
*synth2U
ADSP Report: Generating DSP p11, operation Mode is: (A:0x5a8)*B2.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: register aa0_reg is absorbed into DSP p11.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator p11 is absorbed into DSP p11.
2default:defaulth p
x
? 
w
%s
*synth2_
KDSP Report: Generating DSP zz4, operation Mode is: PCIN+(A:0x3ffffa58)*B2.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: register aa2_reg is absorbed into DSP zz4.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator zz4 is absorbed into DSP zz4.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator p33 is absorbed into DSP zz4.
2default:defaulth p
x
? 
w
%s
*synth2_
KDSP Report: Generating DSP zz4, operation Mode is: PCIN+(A:0x3ffffa58)*B2.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: register aa1_reg is absorbed into DSP zz4.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator zz4 is absorbed into DSP zz4.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator p23 is absorbed into DSP zz4.
2default:defaulth p
x
? 
x
%s
*synth2`
LDSP Report: Generating DSP z4_reg, operation Mode is: (PCIN+(A:0x5a8)*B2)'.
2default:defaulth p
x
? 
f
%s
*synth2N
:DSP Report: register aa3_reg is absorbed into DSP z4_reg.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register z4_reg is absorbed into DSP z4_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator zz4 is absorbed into DSP z4_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator p41 is absorbed into DSP z4_reg.
2default:defaulth p
x
? 
r
%s
*synth2Z
FDSP Report: Generating DSP p44, operation Mode is: (A:0x3ffffcf1)*B2.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: register aa3_reg is absorbed into DSP p44.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator p44 is absorbed into DSP p44.
2default:defaulth p
x
? 
r
%s
*synth2Z
FDSP Report: Generating DSP zz6, operation Mode is: PCIN+(A:0x30f)*B2.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: register aa0_reg is absorbed into DSP zz6.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator zz6 is absorbed into DSP zz6.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator p14 is absorbed into DSP zz6.
2default:defaulth p
x
? 
r
%s
*synth2Z
FDSP Report: Generating DSP zz6, operation Mode is: PCIN+(A:0x764)*B2.
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Report: register aa2_reg is absorbed into DSP zz6.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator zz6 is absorbed into DSP zz6.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator p34 is absorbed into DSP zz6.
2default:defaulth p
x
? 
}
%s
*synth2e
QDSP Report: Generating DSP z6_reg, operation Mode is: (PCIN+(A:0x3ffff89c)*B2)'.
2default:defaulth p
x
? 
f
%s
*synth2N
:DSP Report: register aa1_reg is absorbed into DSP z6_reg.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register z6_reg is absorbed into DSP z6_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator zz6 is absorbed into DSP z6_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator p24 is absorbed into DSP z6_reg.
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 1021.160 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Debug: swapped A/B pins for adder 000002B22CA51430
2default:defaulth p
x
? 
c
%s
*synth2K
7DSP Debug: swapped A/B pins for adder 000002B22CA51430
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
^
%s*synth2F
2
DSP: Preliminary Mapping	Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+------------+---------------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name | DSP Mapping               | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px? 
?
%s*synth2?
?+------------+---------------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|Top         | (A:0x5a8)*B2              | 10     | 12     | -      | -      | 22     | 1    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Top         | PCIN+(A:0x5a8)*B2         | 12     | 10     | -      | -      | 24     | 0    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Top         | PCIN+(A:0x5a8)*B2         | 12     | 10     | -      | -      | 24     | 0    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Top         | (PCIN+(A:0x5a8)*B2)'      | 12     | 10     | -      | -      | 24     | 0    | 1    | -    | -    | -     | 0    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|Top         | (A:0x3ffff89c)*B2         | 10     | 12     | -      | -      | 22     | 1    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Top         | PCIN+(A:0x764)*B2         | 12     | 10     | -      | -      | 24     | 0    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Top         | PCIN+(A:0x3ffffcf1)*B2    | 11     | 10     | -      | -      | 24     | 0    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Top         | (PCIN+(A:0x30f)*B2)'      | 11     | 10     | -      | -      | 24     | 0    | 1    | -    | -    | -     | 0    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|Top         | (A:0x5a8)*B2              | 10     | 12     | -      | -      | 22     | 1    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Top         | PCIN+(A:0x3ffffa58)*B2    | 12     | 10     | -      | -      | 24     | 0    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Top         | PCIN+(A:0x3ffffa58)*B2    | 12     | 10     | -      | -      | 24     | 0    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Top         | (PCIN+(A:0x5a8)*B2)'      | 12     | 10     | -      | -      | 24     | 0    | 1    | -    | -    | -     | 0    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|Top         | (A:0x3ffffcf1)*B2         | 10     | 11     | -      | -      | 21     | 1    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Top         | PCIN+(A:0x30f)*B2         | 11     | 10     | -      | -      | 24     | 0    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Top         | PCIN+(A:0x764)*B2         | 12     | 10     | -      | -      | 24     | 0    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Top         | (PCIN+(A:0x3ffff89c)*B2)' | 12     | 10     | -      | -      | 24     | 0    | 1    | -    | -    | -     | 0    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?+------------+---------------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 1021.160 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Timing Optimization : Time (s): cpu = 00:00:23 ; elapsed = 00:00:24 . Memory (MB): peak = 1021.160 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
zFinished Technology Mapping : Time (s): cpu = 00:00:24 ; elapsed = 00:00:24 . Memory (MB): peak = 1021.160 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
tFinished IO Insertion : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 1026.387 ; gain = 5.227
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:28 ; elapsed = 00:00:28 . Memory (MB): peak = 1026.387 ; gain = 5.227
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 1026.387 ; gain = 5.227
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 1026.387 ; gain = 5.227
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 1026.387 ; gain = 5.227
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Renaming Generated Nets : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 1026.387 ; gain = 5.227
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |   320|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |   116|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |   593|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |   150|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |   156|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |   102|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |    84|
2default:defaulth px? 
D
%s*synth2,
|9     |FDRE   |   136|
2default:defaulth px? 
D
%s*synth2,
|10    |IBUF   |    41|
2default:defaulth px? 
D
%s*synth2,
|11    |OBUF   |    96|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 1026.387 ; gain = 5.227
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
}Synthesis Optimization Runtime : Time (s): cpu = 00:00:20 ; elapsed = 00:00:26 . Memory (MB): peak = 1026.387 ; gain = 5.227
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Complete : Time (s): cpu = 00:00:28 ; elapsed = 00:00:29 . Memory (MB): peak = 1026.387 ; gain = 5.227
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0182default:default2
1036.8712default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
3202default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
?
?Netlist '%s' is not ideal for floorplanning, since the cellview '%s' contains a large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
310*netlist2
Top2default:default2
Top2default:defaultZ29-101h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1037.5002default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
172default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:362default:default2
00:00:382default:default2
1037.5002default:default2
16.3402default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2o
[C:/Xilinx/Vivado2020.1/Vivado/2020.1/2020_VSP/Lab11/architecture/lab11.runs/synth_1/Top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2p
\Executing : report_utilization -file Top_utilization_synth.rpt -pb Top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Dec  9 10:50:15 20202default:defaultZ17-206h px? 


End Record