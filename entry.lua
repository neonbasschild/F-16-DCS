declare_plugin("F-16A by Eagle Dynamics",
{
displayName     = _("F-16A Falcon"),
developerName   =   "Eagle Dynamics",

image     	 = "FC.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
fileMenuName = _("F-16A"),

version		 = "2.0.2",
state		 = "installed",
info		 = _("The F-16A Falcon."),

InputProfiles =
{
    ["F-16A"] = current_mod_path .. '/Input/f-16a',
},


Skins	=
	{
		{
			name	= _("F-16A"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		    = _("F-16A"),
			dir			    = "Missions",
            training_ids    = {EN = 'SU-25T_video_EN', RU = 'SU-25T_video_RU'},
		},
	},		

LogBook =
	{
		{
			name		= _("F-16A"),
			type		= "F-16A",
		},
	},	
Options =
    {
        {
            name		= _("F-16A"),
            nameId		= "F-16A",
            dir			= "Options",
            CLSID		= "{F-16A options}"
        },
    }, 	
})

dofile(current_mod_path.."/Views.lua")
make_view_settings('F-16A', ViewSettings, SnapViews)
mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  (current_mod_path ..  "/Cockpit/Textures/F-16A-CPT-TEXTURES")
mount_vfs_model_path    (current_mod_path ..  "/Cockpit/Shape")
mount_vfs_liveries_path (current_mod_path ..  "/Liveries")

local support_cockpit = current_mod_path..'/Cockpit/Scripts/'

----------------------------------------------------------------------------------------
make_flyable('F-16A', support_cockpit, nil, current_mod_path..'/comm.lua')
----------------------------------------------------------------------------------------
plugin_done()
