# 2025-01-29T20:19:56.484126
import vitis

client = vitis.create_client()
client.set_workspace(path="project_1")

platform = client.create_platform_component(name = "platform_hello_bram",hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa",os = "standalone",cpu = "ps7_cortexa9_0",domain_name = "standalone_ps7_cortexa9_0")

platform = client.get_component(name="platform_hello_bram")
status = platform.build()

comp = client.create_app_component(name="app_hello_bram",platform = "$COMPONENT_LOCATION/../platform_hello_bram/export/platform_hello_bram/platform_hello_bram.xpfm",domain = "standalone_ps7_cortexa9_0")

status = platform.build()

comp = client.get_component(name="app_hello_bram")
comp.build()

client.delete_component(name="app_hello_bram")

comp = client.create_app_component(name="app_hello_bram",platform = "$COMPONENT_LOCATION/../platform_hello_bram/export/platform_hello_bram/platform_hello_bram.xpfm",domain = "standalone_ps7_cortexa9_0",template = "hello_world")

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

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

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

status = platform.build()

comp.build()

vitis.dispose()

