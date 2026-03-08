# 2026-03-06T04:47:49.191523
import vitis

client = vitis.create_client()
client.set_workspace(path="custom_axi_lite_slv_1")

vitis.dispose()

