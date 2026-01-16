# 2025-01-15T19:25:10.043065
import vitis

client = vitis.create_client()
client.set_workspace(path="zed_nand_axi_gpio")

platform = client.create_platform_component(name = "zynq_nand_axi_gpio",hw_design = "$COMPONENT_LOCATION/../zynq_axi_gpio_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="zynq_nand_axi_gpio")
status = platform.build()

comp = client.create_app_component(name="zed_nand_axi_gpio",platform = "$COMPONENT_LOCATION/../zynq_nand_axi_gpio/export/zynq_nand_axi_gpio/zynq_nand_axi_gpio.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="zed_nand_axi_gpio")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

