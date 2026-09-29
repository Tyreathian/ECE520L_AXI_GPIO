# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\jayde\axi_gpio_js\axi_gpio_vitis\axi_gpio_app_task_system\_ide\scripts\debugger_axi_gpio_app_task-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\jayde\axi_gpio_js\axi_gpio_vitis\axi_gpio_app_task_system\_ide\scripts\debugger_axi_gpio_app_task-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351B3FED9A" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351B3FED9A-13722093-0"}
fpga -file C:/Users/jayde/axi_gpio_js/axi_gpio_vitis/axi_gpio_app_task/_ide/bitstream/axi_gpio_js_wrapper_tasking.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/jayde/axi_gpio_js/axi_gpio_vitis/axi_gpio_platform_task/export/axi_gpio_platform_task/hw/axi_gpio_js_wrapper_tasking.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/jayde/axi_gpio_js/axi_gpio_vitis/axi_gpio_app_task/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/jayde/axi_gpio_js/axi_gpio_vitis/axi_gpio_app_task/Debug/axi_gpio_app_task.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
