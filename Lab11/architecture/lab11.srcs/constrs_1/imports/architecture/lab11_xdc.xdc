# ZedBoard xdc
# define clock and period
#create_clock -period 25.000 -name clk_pin -waveform {0.000 12.500} [get_ports clk]
create_clock -period 10.000 -name clk_pin -waveform {0.000 5.000} [get_ports clk]

# Global timing constraints
set_input_delay -clock clk_pin 0.000      [get_ports a0]
set_input_delay -clock clk_pin -min 1.200 [get_ports a0]
set_input_delay -clock clk_pin 0.000      [get_ports a1]
set_input_delay -clock clk_pin -min 1.200 [get_ports a1]
set_input_delay -clock clk_pin 0.000      [get_ports a2]
set_input_delay -clock clk_pin -min 1.200 [get_ports a2]
set_input_delay -clock clk_pin 0.000      [get_ports a3]
set_input_delay -clock clk_pin -min 1.200 [get_ports a3]
set_input_delay -clock clk_pin 0.000      [get_ports rst]
set_input_delay -clock clk_pin -min 1.200 [get_ports rst]

#set_output_delay -clock clk_pin 0.000    [all_outputs]
set_output_delay -clock clk_pin 0.000     [all_outputs]
# Path specific timing constraints
set_output_delay -clock clk_pin -clock_fall -add_delay 0.000 [get_ports z0]
set_output_delay -clock clk_pin -min 1.200                   [get_ports z0]
set_output_delay -clock clk_pin -clock_fall -add_delay 0.000 [get_ports z2]
set_output_delay -clock clk_pin -min 1.200                   [get_ports z2]
set_output_delay -clock clk_pin -clock_fall -add_delay 0.000 [get_ports z4]
set_output_delay -clock clk_pin -min 1.200                   [get_ports z4]
set_output_delay -clock clk_pin -clock_fall -add_delay 0.000 [get_ports z6]
set_output_delay -clock clk_pin -min 1.200                   [get_ports z6]