# 2025-01-06T08:13:28.577414
import vitis

client = vitis.create_client()
client.set_workspace(path="mb_uart")

vitis.dispose()

