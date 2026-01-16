# 2025-01-05T14:14:12.404461
import vitis

client = vitis.create_client()
client.set_workspace(path="mb_uart")

vitis.dispose()

