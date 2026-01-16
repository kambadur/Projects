# 2025-01-02T17:57:15.172788
import vitis

client = vitis.create_client()
client.set_workspace(path="mb_uart")

vitis.dispose()

