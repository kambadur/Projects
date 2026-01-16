# 2025-01-14T13:53:55.476775
import vitis

client = vitis.create_client()
client.set_workspace(path="mb_uart")

vitis.dispose()

