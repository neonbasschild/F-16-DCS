mount_vfs_texture_archives("Bazar/Textures/AvionicsCommon")

attributes = {
	"support_for_cws",
}
---------------------------------------------
dofile(LockOn_Options.common_script_path.."KNEEBOARD/declare_kneeboard_device_left.lua")
---------------------------------------------
layoutGeometry = {}

--	items in <...> are optional
--
-- MainPanel = {"NAME_OF_CLASS",
--				"INIT_SCRIPT_FILE",
--				<{devices.LINKED_DEVICE1, devices.LINKED_DEVICE2, ...},>
--			   }

MainPanel = {"P51D::ccMainPanel51D", 
			LockOn_Options.script_path.."mainpanel_init.lua",
			{{"RightSwitchPanel",devices.RIGHT_SWITCH_PANEL},
			{"AirspeedInd", devices.AIRSPEED_INDICATOR},
			{"Altimeter", devices.ALTIMETER},
			{"Variometer", devices.VARIOMETER},
			{"FM_Proxy",devices.FM_PROXY},
			{"Art_Horizon",devices.ARTIFICIAL_HORIZON},
			{"Directional_Hyro",devices.DIRECTIONAL_GYRO},
			{"Turn_Ind",devices.TURN_INDICATOR},
			{"Clock", devices.CLOCK},
			{"RemoteCompass", devices.REMOTE_COMPASS},
			{"VHF_Radio", devices.VHF_RADIO},
			{"OxygenSystem",devices.OXYGEN_SYSTEM},
			{"FuelSystem",devices.FUEL_SYSTEM},
			{"TailRadar",devices.TAIL_WARNING_RADAR},
			{"VHF_Radio",devices.VHF_RADIO},
			{"HydraulicSystem",devices.HYDRAULIC_SYSTEM},
			{"ControlSystem",devices.CONTROL_SYSTEM},
			{"EngineSystem",devices.ENGINE_SYSTEM},
			{"LightSystem",devices.LIGHT_SYSTEM},
			{"EngineControlPanel",devices.ENGINE_CONTROL_PANEL},
			{"Accelerometer",devices.ACCELEROMETER},
			{"CPT_MECH",devices.CPT_MECH}},
            LockOn_Options.script_path.."main_panel_commands.lua"}
			 