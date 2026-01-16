# 2025-07-08T05:50:09.491964
import vitis

client = vitis.create_client()
client.set_workspace(path="zynq_bram")

vitis.dispose()

