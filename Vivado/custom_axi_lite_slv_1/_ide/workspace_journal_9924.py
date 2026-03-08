# 2026-03-07T18:59:40.527296
import vitis

client = vitis.create_client()
client.set_workspace(path="custom_axi_lite_slv_1")

vitis.dispose()

