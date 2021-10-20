set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { clkin }];

set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports { a[0] }];
set_property -dict { PACKAGE_PIN D20   IOSTANDARD LVCMOS33 } [get_ports { a[1] }];
set_property -dict { PACKAGE_PIN L20   IOSTANDARD LVCMOS33 } [get_ports { a[2] }];
set_property -dict { PACKAGE_PIN L19   IOSTANDARD LVCMOS33 } [get_ports { a[3] }];

set_property -dict { PACKAGE_PIN M19   IOSTANDARD LVCMOS33 } [get_ports { b[0] }];
set_property -dict { PACKAGE_PIN M20   IOSTANDARD LVCMOS33 } [get_ports { b[1] }];



set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { cout }];

set_property -dict { PACKAGE_PIN R14   IOSTANDARD LVCMOS33 } [get_ports { s[0] }];
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { s[1] }];
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { s[2] }];
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { s[3] }];

set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVCMOS33 } [get_ports { clko }];