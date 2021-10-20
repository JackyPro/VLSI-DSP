# ZedBoard xdc
# define clock and period
create_clock -period 10.000 -name clk_pin -waveform {0.000 4.000} [get_ports clk]


# Global timing constraints
set_input_delay -clock clk_pin 0.000 [get_ports filter_in]
set_input_delay -clock clk_pin -min -0.500 [get_ports filter_in]
set_input_delay -clock clk_pin 0.000 [get_ports rst]
set_input_delay -clock clk_pin -min -0.500 [get_ports rst]
set_output_delay -clock clk_pin 0.000 [all_outputs]

# Path specific timing constraints
set_output_delay -clock clk_pin -clock_fall -add_delay 0.000 [get_ports clk]

