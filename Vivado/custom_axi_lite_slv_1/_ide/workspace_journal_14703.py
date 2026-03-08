# 2026-02-28T21:34:22.578772
import vitis

client = vitis.create_client()
client.set_workspace(path="custom_axi_lite_slv_1")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="lwip_echo_server")
comp.build()

comp = client.get_component(name="fulladd_custom_axi_slv")
status = comp.clean()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

