create_clock -period 10.000 -name clk -waveform {0.000 5.00}
set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports top_x1]; #IO_L24N_T3_RS0_15 Sch=sw[0]
set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS33} [get_ports top_x2]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]
set_property -dict {PACKAGE_PIN M13 IOSTANDARD LVCMOS33} [get_ports top_x3];
set_property -dict {PACKAGE_PIN R15 IOSTANDARD LVCMOS33} [get_ports top_x4];


set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33}      [get_ports { top_result }];
#set_property -dict {PACKAGE_PIN K15 IOSTANDARD LVCMOS33}      [get_ports { q2_top   }];
                                                                      #BTNC
#set_property -dict { PACKAGE_PIN N17   IOSTANDARD LVCMOS33 } [get_ports { reset }]; 
