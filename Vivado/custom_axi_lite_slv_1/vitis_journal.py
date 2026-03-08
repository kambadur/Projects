# IPython log file

get_ipython().run_line_magic('pwd', '')
#[Out]# '/home/carbon/kambadur/Projects/Vivado/custom_axi_lite_slv_1'
touch hil_serial.py
vitis -s hil_serial.py
execfile('hil_serial.py')
exec(open('hil_serial.py').read())
