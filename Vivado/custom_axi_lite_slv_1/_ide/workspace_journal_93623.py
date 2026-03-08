# 2026-02-27T11:29:59.383806
import vitis

client = vitis.create_client()
client.set_workspace(path="custom_axi_lite_slv_1")

comp = client.get_component(name="fulladd_custom_axi_slv")
status = comp.clean()

platform = client.get_component(name="platform")
status = platform.build()

comp.build()

vitis.dispose()

