
{
Command: %s
53*	vivadotcl2J
6synth_design -top dct -part xc7z020clg484-1 -max_dsp 02default:defaultZ4-113h px? 
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
xc7z020clg484-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
257762default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 1022.910 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
dct2default:default2
 2default:default2z
dC:/Xilinx/Vivado2020.1/Vivado/2020.1/2020_VSP/final_project/8x8_1D_DCT_opt_with_CORDIC3/8x8_1D_DCT.v2default:default2
222default:default8@Z8-6157h px? 
X
%s
*synth2@
,	Parameter w_i bound to: 8 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter w_coeffi bound to: 13 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter w_o bound to: 23 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
Cordic2default:default2
 2default:default2v
`C:/Xilinx/Vivado2020.1/Vivado/2020.1/2020_VSP/final_project/8x8_1D_DCT_opt_with_CORDIC3/cordic.v2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter Pipeline bound to: 10 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter K bound to: 16'b0000000010011011 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Cordic2default:default2
 2default:default2
12default:default2
12default:default2v
`C:/Xilinx/Vivado2020.1/Vivado/2020.1/2020_VSP/final_project/8x8_1D_DCT_opt_with_CORDIC3/cordic.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
Cordic22default:default2
 2default:default2w
aC:/Xilinx/Vivado2020.1/Vivado/2020.1/2020_VSP/final_project/8x8_1D_DCT_opt_with_CORDIC3/cordic2.v2default:default2
12default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter Pipeline bound to: 10 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter K bound to: 16'b0000000010011011 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Cordic22default:default2
 2default:default2
22default:default2
12default:default2w
aC:/Xilinx/Vivado2020.1/Vivado/2020.1/2020_VSP/final_project/8x8_1D_DCT_opt_with_CORDIC3/cordic2.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
dct2default:default2
 2default:default2
32default:default2
12default:default2z
dC:/Xilinx/Vivado2020.1/Vivado/2020.1/2020_VSP/final_project/8x8_1D_DCT_opt_with_CORDIC3/8x8_1D_DCT.v2default:default2
222default:default8@Z8-6155h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1022.910 ; gain = 0.000
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1022.910 ; gain = 0.000
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
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1022.910 ; gain = 0.000
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
00:00:00.0692default:default2
1022.9102default:default2
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
wC:/Xilinx/Vivado2020.1/Vivado/2020.1/2020_VSP/final_project/8x8_1D_DCT_opt_with_CORDIC3/8x8_1D_DCT_opt_with_CORDIC3.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2
rst2default:default2?
wC:/Xilinx/Vivado2020.1/Vivado/2020.1/2020_VSP/final_project/8x8_1D_DCT_opt_with_CORDIC3/8x8_1D_DCT_opt_with_CORDIC3.xdc2default:default2
72default:default8@Z12-584h px?
?
&%s:No valid object(s) found for '%s'.
2779*	planAhead2#
set_input_delay2default:default2,
-objects [get_ports rst]2default:default2?
wC:/Xilinx/Vivado2020.1/Vivado/2020.1/2020_VSP/final_project/8x8_1D_DCT_opt_with_CORDIC3/8x8_1D_DCT_opt_with_CORDIC3.xdc2default:default2
72default:default8@Z12-4739h px?
?
No ports matched '%s'.
584*	planAhead2
rst2default:default2?
wC:/Xilinx/Vivado2020.1/Vivado/2020.1/2020_VSP/final_project/8x8_1D_DCT_opt_with_CORDIC3/8x8_1D_DCT_opt_with_CORDIC3.xdc2default:default2
82default:default8@Z12-584h px?
?
&%s:No valid object(s) found for '%s'.
2779*	planAhead2#
set_input_delay2default:default2,
-objects [get_ports rst]2default:default2?
wC:/Xilinx/Vivado2020.1/Vivado/2020.1/2020_VSP/final_project/8x8_1D_DCT_opt_with_CORDIC3/8x8_1D_DCT_opt_with_CORDIC3.xdc2default:default2
82default:default8@Z12-4739h px?
?
Finished Parsing XDC File [%s]
178*designutils2?
wC:/Xilinx/Vivado2020.1/Vivado/2020.1/2020_VSP/final_project/8x8_1D_DCT_opt_with_CORDIC3/8x8_1D_DCT_opt_with_CORDIC3.xdc2default:default8Z20-178h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1060.3872default:default2
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
00:00:00.0602default:default2
1060.3872default:default2
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
~Finished Constraint Validation : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1060.387 ; gain = 37.477
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
Loading part: xc7z020clg484-1
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1060.387 ; gain = 37.477
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
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1060.387 ; gain = 37.477
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
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1060.387 ; gain = 37.477
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
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   17 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   17 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit       Adders := 60    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   16 Bit       Adders := 108   
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   10 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   10 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    9 Bit       Adders := 4     
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
.	               17 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 242   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 66    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 120   
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   16 Bit        Muxes := 12    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   15 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   14 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   13 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 6     
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
q
%s
*synth2Y
EDSP Report: Generating DSP x0_reg, operation Mode is: (A*(B:0x9b))'.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register x0_reg is absorbed into DSP x0_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator x00 is absorbed into DSP x0_reg.
2default:defaulth p
x
? 
?
%s
*synth2r
^DSP Report: Generating DSP x1_reg, operation Mode is: (C+(A*(B:0x9b))') OR (C-(A*(B:0x9b))').
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register x1_reg is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register y0_reg is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator x10 is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator x10 is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator y00 is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
s
%s
*synth2[
GDSP Report: Generating DSP x10, operation Mode is: PCIN+(A*(B:0x9b))'.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: register y0_reg is absorbed into DSP x10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator y00 is absorbed into DSP x10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator x10 is absorbed into DSP x10.
2default:defaulth p
x
? 
q
%s
*synth2Y
EDSP Report: Generating DSP y0_reg, operation Mode is: (A*(B:0x9b))'.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register y0_reg is absorbed into DSP y0_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator y00 is absorbed into DSP y0_reg.
2default:defaulth p
x
? 
s
%s
*synth2[
GDSP Report: Generating DSP y10, operation Mode is: PCIN-(A*(B:0x9b))'.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: register x0_reg is absorbed into DSP y10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator x00 is absorbed into DSP y10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator y10 is absorbed into DSP y10.
2default:defaulth p
x
? 
q
%s
*synth2Y
EDSP Report: Generating DSP x0_reg, operation Mode is: (A*(B:0x9b))'.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register x0_reg is absorbed into DSP x0_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator x00 is absorbed into DSP x0_reg.
2default:defaulth p
x
? 
?
%s
*synth2r
^DSP Report: Generating DSP x1_reg, operation Mode is: (C+(A*(B:0x9b))') OR (C-(A*(B:0x9b))').
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register x1_reg is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register y0_reg is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator x10 is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator x10 is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator y00 is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
s
%s
*synth2[
GDSP Report: Generating DSP x10, operation Mode is: PCIN+(A*(B:0x9b))'.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: register y0_reg is absorbed into DSP x10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator y00 is absorbed into DSP x10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator x10 is absorbed into DSP x10.
2default:defaulth p
x
? 
q
%s
*synth2Y
EDSP Report: Generating DSP y0_reg, operation Mode is: (A*(B:0x9b))'.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register y0_reg is absorbed into DSP y0_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator y00 is absorbed into DSP y0_reg.
2default:defaulth p
x
? 
s
%s
*synth2[
GDSP Report: Generating DSP y10, operation Mode is: PCIN-(A*(B:0x9b))'.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: register x0_reg is absorbed into DSP y10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator x00 is absorbed into DSP y10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator y10 is absorbed into DSP y10.
2default:defaulth p
x
? 
q
%s
*synth2Y
EDSP Report: Generating DSP x0_reg, operation Mode is: (A*(B:0x9b))'.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register x0_reg is absorbed into DSP x0_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator x00 is absorbed into DSP x0_reg.
2default:defaulth p
x
? 
s
%s
*synth2[
GDSP Report: Generating DSP x10, operation Mode is: PCIN+(A*(B:0x9b))'.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: register y0_reg is absorbed into DSP x10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator y00 is absorbed into DSP x10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator x10 is absorbed into DSP x10.
2default:defaulth p
x
? 
q
%s
*synth2Y
EDSP Report: Generating DSP y0_reg, operation Mode is: (A*(B:0x9b))'.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register y0_reg is absorbed into DSP y0_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator y00 is absorbed into DSP y0_reg.
2default:defaulth p
x
? 
s
%s
*synth2[
GDSP Report: Generating DSP y10, operation Mode is: PCIN-(A*(B:0x9b))'.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: register x0_reg is absorbed into DSP y10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator x00 is absorbed into DSP y10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator y10 is absorbed into DSP y10.
2default:defaulth p
x
? 
?
%s
*synth2r
^DSP Report: Generating DSP x1_reg, operation Mode is: (C-(A*(B:0x9b))') OR (C+(A*(B:0x9b))').
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register x1_reg is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register y0_reg is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator x10 is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator x10 is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator y00 is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
q
%s
*synth2Y
EDSP Report: Generating DSP x0_reg, operation Mode is: (A*(B:0x9b))'.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register x0_reg is absorbed into DSP x0_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator x00 is absorbed into DSP x0_reg.
2default:defaulth p
x
? 
s
%s
*synth2[
GDSP Report: Generating DSP x10, operation Mode is: PCIN+(A*(B:0x9b))'.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: register y0_reg is absorbed into DSP x10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator y00 is absorbed into DSP x10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator x10 is absorbed into DSP x10.
2default:defaulth p
x
? 
q
%s
*synth2Y
EDSP Report: Generating DSP y0_reg, operation Mode is: (A*(B:0x9b))'.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register y0_reg is absorbed into DSP y0_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator y00 is absorbed into DSP y0_reg.
2default:defaulth p
x
? 
s
%s
*synth2[
GDSP Report: Generating DSP y10, operation Mode is: PCIN-(A*(B:0x9b))'.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: register x0_reg is absorbed into DSP y10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator x00 is absorbed into DSP y10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator y10 is absorbed into DSP y10.
2default:defaulth p
x
? 
?
%s
*synth2r
^DSP Report: Generating DSP x1_reg, operation Mode is: (C-(A*(B:0x9b))') OR (C+(A*(B:0x9b))').
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register x1_reg is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register y0_reg is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator x10 is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator x10 is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator y00 is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
q
%s
*synth2Y
EDSP Report: Generating DSP x0_reg, operation Mode is: (A*(B:0x9b))'.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register x0_reg is absorbed into DSP x0_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator x00 is absorbed into DSP x0_reg.
2default:defaulth p
x
? 
s
%s
*synth2[
GDSP Report: Generating DSP x10, operation Mode is: PCIN+(A*(B:0x9b))'.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: register y0_reg is absorbed into DSP x10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator y00 is absorbed into DSP x10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator x10 is absorbed into DSP x10.
2default:defaulth p
x
? 
q
%s
*synth2Y
EDSP Report: Generating DSP y0_reg, operation Mode is: (A*(B:0x9b))'.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register y0_reg is absorbed into DSP y0_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator y00 is absorbed into DSP y0_reg.
2default:defaulth p
x
? 
s
%s
*synth2[
GDSP Report: Generating DSP y10, operation Mode is: PCIN-(A*(B:0x9b))'.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: register x0_reg is absorbed into DSP y10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator x00 is absorbed into DSP y10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator y10 is absorbed into DSP y10.
2default:defaulth p
x
? 
?
%s
*synth2r
^DSP Report: Generating DSP x1_reg, operation Mode is: (C-(A*(B:0x9b))') OR (C+(A*(B:0x9b))').
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register x1_reg is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register y0_reg is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator x10 is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator x10 is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator y00 is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
q
%s
*synth2Y
EDSP Report: Generating DSP x0_reg, operation Mode is: (A*(B:0x9b))'.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register x0_reg is absorbed into DSP x0_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator x00 is absorbed into DSP x0_reg.
2default:defaulth p
x
? 
s
%s
*synth2[
GDSP Report: Generating DSP x10, operation Mode is: PCIN+(A*(B:0x9b))'.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: register y0_reg is absorbed into DSP x10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator y00 is absorbed into DSP x10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator x10 is absorbed into DSP x10.
2default:defaulth p
x
? 
q
%s
*synth2Y
EDSP Report: Generating DSP y0_reg, operation Mode is: (A*(B:0x9b))'.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register y0_reg is absorbed into DSP y0_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator y00 is absorbed into DSP y0_reg.
2default:defaulth p
x
? 
s
%s
*synth2[
GDSP Report: Generating DSP y10, operation Mode is: PCIN-(A*(B:0x9b))'.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: register x0_reg is absorbed into DSP y10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator x00 is absorbed into DSP y10.
2default:defaulth p
x
? 
_
%s
*synth2G
3DSP Report: operator y10 is absorbed into DSP y10.
2default:defaulth p
x
? 
?
%s
*synth2r
^DSP Report: Generating DSP x1_reg, operation Mode is: (C-(A*(B:0x9b))') OR (C+(A*(B:0x9b))').
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register x1_reg is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: register y0_reg is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator x10 is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator x10 is absorbed into DSP x1_reg.
2default:defaulth p
x
? 
b
%s
*synth2J
6DSP Report: operator y00 is absorbed into DSP x1_reg.
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
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1060.387 ; gain = 37.477
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
?+------------+----------------------------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name | DSP Mapping                            | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px? 
?
%s*synth2?
?+------------+----------------------------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|Cordic      | (A*(B:0x9b))'                          | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic      | (C+(A*(B:0x9b))') OR (C-(A*(B:0x9b))') | 16     | 8      | 16     | -      | 16     | 0    | 0    | 0    | -    | -     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic      | PCIN+(A*(B:0x9b))'                     | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic      | (A*(B:0x9b))'                          | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic      | PCIN-(A*(B:0x9b))'                     | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic      | (A*(B:0x9b))'                          | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic      | (C+(A*(B:0x9b))') OR (C-(A*(B:0x9b))') | 16     | 8      | 16     | -      | 16     | 0    | 0    | 0    | -    | -     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic      | PCIN+(A*(B:0x9b))'                     | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic      | (A*(B:0x9b))'                          | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic      | PCIN-(A*(B:0x9b))'                     | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic2     | (A*(B:0x9b))'                          | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic2     | PCIN+(A*(B:0x9b))'                     | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic2     | (A*(B:0x9b))'                          | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic2     | PCIN-(A*(B:0x9b))'                     | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic2     | (C-(A*(B:0x9b))') OR (C+(A*(B:0x9b))') | 16     | 8      | 16     | -      | 16     | 0    | 0    | 0    | -    | -     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic2     | (A*(B:0x9b))'                          | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic2     | PCIN+(A*(B:0x9b))'                     | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic2     | (A*(B:0x9b))'                          | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic2     | PCIN-(A*(B:0x9b))'                     | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic2     | (C-(A*(B:0x9b))') OR (C+(A*(B:0x9b))') | 16     | 8      | 16     | -      | 16     | 0    | 0    | 0    | -    | -     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic2     | (A*(B:0x9b))'                          | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic2     | PCIN+(A*(B:0x9b))'                     | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic2     | (A*(B:0x9b))'                          | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic2     | PCIN-(A*(B:0x9b))'                     | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic2     | (C-(A*(B:0x9b))') OR (C+(A*(B:0x9b))') | 16     | 8      | 16     | -      | 16     | 0    | 0    | 0    | -    | -     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic2     | (A*(B:0x9b))'                          | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic2     | PCIN+(A*(B:0x9b))'                     | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic2     | (A*(B:0x9b))'                          | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic2     | PCIN-(A*(B:0x9b))'                     | 16     | 8      | -      | -      | 16     | 0    | 0    | -    | -    | -     | 1    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|Cordic2     | (C-(A*(B:0x9b))') OR (C+(A*(B:0x9b))') | 16     | 8      | 16     | -      | 16     | 0    | 0    | 0    | -    | -     | 1    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?+------------+----------------------------------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

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
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:26 ; elapsed = 00:00:27 . Memory (MB): peak = 1060.387 ; gain = 37.477
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
|Finished Timing Optimization : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1060.387 ; gain = 37.477
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
{Finished Technology Mapping : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 1068.004 ; gain = 45.094
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
uFinished IO Insertion : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 1073.250 ; gain = 50.340
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 1073.250 ; gain = 50.340
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:34 ; elapsed = 00:00:35 . Memory (MB): peak = 1073.250 ; gain = 50.340
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:34 ; elapsed = 00:00:35 . Memory (MB): peak = 1073.250 ; gain = 50.340
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:34 ; elapsed = 00:00:35 . Memory (MB): peak = 1073.250 ; gain = 50.340
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
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:34 ; elapsed = 00:00:35 . Memory (MB): peak = 1073.250 ; gain = 50.340
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
|2     |CARRY4 |   798|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |   290|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |  1131|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |  1736|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |    84|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |     8|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |     4|
2default:defaulth px? 
D
%s*synth2,
|9     |FDRE   |  3490|
2default:defaulth px? 
D
%s*synth2,
|10    |IBUF   |    68|
2default:defaulth px? 
D
%s*synth2,
|11    |OBUF   |   136|
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:34 ; elapsed = 00:00:35 . Memory (MB): peak = 1073.250 ; gain = 50.340
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
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:25 ; elapsed = 00:00:32 . Memory (MB): peak = 1073.250 ; gain = 12.863
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:34 ; elapsed = 00:00:35 . Memory (MB): peak = 1073.250 ; gain = 50.340
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
00:00:00.0782default:default2
1073.2502default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
7982default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
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
00:00:00.0022default:default2
1073.2502default:default2
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
212default:default2
22default:default2
22default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:412default:default2
00:00:432default:default2
1073.2502default:default2
50.3402default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?C:/Xilinx/Vivado2020.1/Vivado/2020.1/2020_VSP/final_project/8x8_1D_DCT_opt_with_CORDIC3/8x8_1D_DCT_opt_with_CORDIC3.runs/synth_1/dct.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2p
\Executing : report_utilization -file dct_utilization_synth.rpt -pb dct_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Jan 13 01:28:59 20212default:defaultZ17-206h px? 


End Record