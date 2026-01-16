# 2025-07-07T20:02:49.203072
import vitis

client = vitis.create_client()
client.set_workspace(path="zed_nand_axi_gpio")

vitis.dispose()

