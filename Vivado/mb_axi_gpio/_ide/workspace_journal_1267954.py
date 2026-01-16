# 2025-01-20T23:24:57.502124
import vitis

client = vitis.create_client()
client.set_workspace(path="mb_axi_gpio")

platform = client.create_platform_component(name = "platform_mb_axi_gpio",hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

platform = client.get_component(name="platform_mb_axi_gpio")
status = platform.build()

client.delete_component(name="platform_mb_axi_gpio")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

