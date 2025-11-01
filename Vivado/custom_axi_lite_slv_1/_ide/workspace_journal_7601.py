# 2025-11-01T16:43:34.354767
import vitis

client = vitis.create_client()
client.set_workspace(path="custom_axi_lite_slv_1")

comp = client.get_component(name="fulladd_custom_axi_slv")
status = comp.clean()

platform = client.get_component(name="platform")
status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../design_1_wrapper.xsa")

status = platform.build()

vitis.dispose()

