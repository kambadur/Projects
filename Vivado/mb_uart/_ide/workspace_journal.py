# 2025-01-14T14:11:49.353885
import vitis

client = vitis.create_client()
client.set_workspace(path="mb_uart")

platform = client.create_platform_component(name = "platform_mb_uart",hw_design = "$COMPONENT_LOCATION/../mb_uart_wrapper.xsa",os = "standalone",cpu = "microblaze_0",domain_name = "standalone_microblaze_0")

platform = client.get_component(name="platform_mb_uart")
status = platform.build()

comp = client.create_app_component(name="app_hello_world",platform = "$COMPONENT_LOCATION/../platform_mb_uart/export/platform_mb_uart/platform_mb_uart.xpfm",domain = "standalone_microblaze_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="app_hello_world")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

