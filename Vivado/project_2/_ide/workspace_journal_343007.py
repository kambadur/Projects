# 2025-02-02T09:08:29.074570
import vitis

client = vitis.create_client()
client.set_workspace(path="project_2")

platform = client.create_platform_component(name = "platform_zynq_spi_intr",hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="platform_zynq_spi_intr")
status = platform.build()

comp = client.create_app_component(name="app_zynq_spi_intr",platform = "$COMPONENT_LOCATION/../platform_zynq_spi_intr/export/platform_zynq_spi_intr/platform_zynq_spi_intr.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="app_zynq_spi_intr")
comp.build()

status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

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

status = comp.clean()

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

status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

