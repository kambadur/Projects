# 2026-02-28T17:57:44.215816
import vitis

client = vitis.create_client()
client.set_workspace(path="custom_axi_lite_slv_1")

comp = client.get_component(name="fulladd_custom_axi_slv")
status = comp.clean()

platform = client.get_component(name="platform")
status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

comp = client.create_app_component(name="app_component_lwip",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_ps7_cortexa9_0")

client.delete_component(name="app_component_lwip")

vitis.dispose()

