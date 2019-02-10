# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BATCH_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RANK_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WIDTH_INT" -parent ${Page_0}


}

proc update_PARAM_VALUE.BATCH_SIZE { PARAM_VALUE.BATCH_SIZE } {
	# Procedure called to update BATCH_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BATCH_SIZE { PARAM_VALUE.BATCH_SIZE } {
	# Procedure called to validate BATCH_SIZE
	return true
}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.RANK_MAX { PARAM_VALUE.RANK_MAX } {
	# Procedure called to update RANK_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RANK_MAX { PARAM_VALUE.RANK_MAX } {
	# Procedure called to validate RANK_MAX
	return true
}

proc update_PARAM_VALUE.WIDTH_INT { PARAM_VALUE.WIDTH_INT } {
	# Procedure called to update WIDTH_INT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WIDTH_INT { PARAM_VALUE.WIDTH_INT } {
	# Procedure called to validate WIDTH_INT
	return true
}


proc update_MODELPARAM_VALUE.DATA_WIDTH { MODELPARAM_VALUE.DATA_WIDTH PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_WIDTH}] ${MODELPARAM_VALUE.DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.WIDTH_INT { MODELPARAM_VALUE.WIDTH_INT PARAM_VALUE.WIDTH_INT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WIDTH_INT}] ${MODELPARAM_VALUE.WIDTH_INT}
}

proc update_MODELPARAM_VALUE.BATCH_SIZE { MODELPARAM_VALUE.BATCH_SIZE PARAM_VALUE.BATCH_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BATCH_SIZE}] ${MODELPARAM_VALUE.BATCH_SIZE}
}

proc update_MODELPARAM_VALUE.RANK_MAX { MODELPARAM_VALUE.RANK_MAX PARAM_VALUE.RANK_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RANK_MAX}] ${MODELPARAM_VALUE.RANK_MAX}
}

