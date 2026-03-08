# 2026-03-05T04:08:18.138761
import vitis

client = vitis.create_client()
client.set_workspace(path="custom_axi_lite_slv_1")

vitis.dispose()

