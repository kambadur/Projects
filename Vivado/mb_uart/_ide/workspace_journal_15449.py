# 2025-01-02T17:55:30.696060
import vitis

client = vitis.create_client()
client.set_workspace(path="mb_uart")

vitis.dispose()

