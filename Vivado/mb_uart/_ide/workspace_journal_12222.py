# 2025-01-02T17:44:10.163772
import vitis

client = vitis.create_client()
client.set_workspace(path="mb_uart")

vitis.dispose()

