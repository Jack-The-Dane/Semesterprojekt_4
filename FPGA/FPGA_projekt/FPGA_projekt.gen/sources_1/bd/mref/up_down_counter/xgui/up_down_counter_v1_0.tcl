# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "max_val_binary" -parent ${Page_0}
  ipgui::add_param $IPINST -name "n_bits" -parent ${Page_0}


}

proc update_PARAM_VALUE.max_val_binary { PARAM_VALUE.max_val_binary } {
	# Procedure called to update max_val_binary when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.max_val_binary { PARAM_VALUE.max_val_binary } {
	# Procedure called to validate max_val_binary
	return true
}

proc update_PARAM_VALUE.n_bits { PARAM_VALUE.n_bits } {
	# Procedure called to update n_bits when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.n_bits { PARAM_VALUE.n_bits } {
	# Procedure called to validate n_bits
	return true
}


proc update_MODELPARAM_VALUE.n_bits { MODELPARAM_VALUE.n_bits PARAM_VALUE.n_bits } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.n_bits}] ${MODELPARAM_VALUE.n_bits}
}

proc update_MODELPARAM_VALUE.max_val_binary { MODELPARAM_VALUE.max_val_binary PARAM_VALUE.max_val_binary } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.max_val_binary}] ${MODELPARAM_VALUE.max_val_binary}
}

