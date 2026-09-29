# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\jayde\axi_gpio_js\axi_gpio_vitis\axi_gpio_platform_task\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\jayde\axi_gpio_js\axi_gpio_vitis\axi_gpio_platform_task\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {axi_gpio_platform_task}\
-hw {C:\Users\jayde\axi_gpio_js\axi_gpio_js_wrapper_tasking.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/Users/jayde/axi_gpio_js/axi_gpio_vitis}

platform write
platform generate -domains 
platform active {axi_gpio_platform_task}
platform generate
