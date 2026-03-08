# 2026-03-03T03:55:15.525749
import vitis

client = vitis.create_client()
client.set_workspace(path="custom_axi_lite_slv_1")

vitis.dispose()

