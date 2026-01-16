# 2025-04-25T22:42:19.038617
import vitis

client = vitis.create_client()
client.set_workspace(path="zynq_bram")

status = client.add_platform_repos(platform=["/home/carbon/kambadur/Projects/Vivado/zynq_bram"])

status = client.add_platform_repos(platform=["/home/carbon/kambadur/Projects/Vivado/zynq_bram"])

vitis.dispose()

