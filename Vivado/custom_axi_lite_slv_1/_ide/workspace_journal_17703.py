# 2026-03-04T19:14:33.144483
import vitis

client = vitis.create_client()
client.set_workspace(path="custom_axi_lite_slv_1")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="fulladd_custom_axi_slv")
status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

