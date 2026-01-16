# 2025-01-02T18:27:13.648812
import vitis

client = vitis.create_client()
client.set_workspace(path="mb_uart")

vitis.dispose()

