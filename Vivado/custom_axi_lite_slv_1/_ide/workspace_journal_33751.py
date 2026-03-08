# 2026-03-05T03:40:02.557234
import vitis

client = vitis.create_client()
client.set_workspace(path="custom_axi_lite_slv_1")

vitis.dispose()

