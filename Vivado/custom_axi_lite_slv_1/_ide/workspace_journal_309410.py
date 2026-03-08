# 2026-02-28T21:13:10.699625
import vitis

client = vitis.create_client()
client.set_workspace(path="custom_axi_lite_slv_1")

platform = client.get_component(name="platform")
domain = platform.get_domain(name="standalone_ps7_cortexa9_0")

status = domain.set_lib(lib_name="lwip220", path="/tools/Xilinx/Vitis/2024.2/data/embeddedsw/ThirdParty/sw_services/lwip220_v1_1")

status = domain.regenerate()

status = platform.build()

comp = client.create_app_component(name="lwip_echo_server",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0",template = "lwip_echo_server")

status = platform.build()

comp = client.get_component(name="lwip_echo_server")
comp.build()

comp = client.get_component(name="fulladd_custom_axi_slv")
status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

