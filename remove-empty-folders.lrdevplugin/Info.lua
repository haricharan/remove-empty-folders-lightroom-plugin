--[[----------------------------------------------------------------------------

Remove Empty Folders
Written in 2019 by Haricharan

--------------------------------------------------------------------------------

Info.lua
Removes empty folders from Lightroom Catalog

Adds menu items to Lightroom.

------------------------------------------------------------------------------]]

return {
	
	LrSdkVersion = 3.0,
	LrSdkMinimumVersion = 3.0, -- minimum SDK version required by this plug-in

	LrToolkitIdentifier = 'org.ashari.lightroom.removeemptyfolders',

	LrPluginName = LOC "$$$/RemoveEmptyFolders/PluginName=Remove Empty Folders",
	
	-- Add the menu item to the File menu.
	
	LrExportMenuItems = {
		title = "Remove Empty Folders",
		file = "remove-empty-folders.lua",
	},
	VERSION = { major=1, minor=0, revision=0, build=1000, },

}


	
