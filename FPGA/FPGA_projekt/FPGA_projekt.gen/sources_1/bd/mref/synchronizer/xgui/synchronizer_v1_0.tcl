# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "n_flipflops" -parent ${Page_0}


}

proc update_PARAM_VALUE.n_flipflops { PARAM_VALUE.n_flipflops } {
	# Procedure called to update n_flipflops when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.n_flipflops { PARAM_VALUE.n_flipflops } {
	# Procedure called to validate n_flipflops
	return true
}


proc update_MODELPARAM_VALUE.n_flipflops { MODELPARAM_VALUE.n_flipflops PARAM_VALUE.n_flipflops } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.n_flipflops}] ${MODELPARAM_VALUE.n_flipflops}
}

