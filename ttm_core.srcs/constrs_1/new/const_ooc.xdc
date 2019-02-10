create_clock -period 3.300 -name clk -waveform {0.000 1.650} [list [get_ports clk] [get_ports coeffclk]]
