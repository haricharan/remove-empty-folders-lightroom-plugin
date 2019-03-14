# Remove Empty Folders Lightroom Plugin

## About

This plugin removes empty folders recursively up to 5 levels. The folder is considered empty when there are no photos present (including the subfolders).

This plugin moves the folder from the file system to Trash. You have to run Synchronize folder to remove the missing folders from the catalog. Lightroom SDK doesn't have the capability to run Synchronize on a folder.

## How to install

  1. Download a source code.
  2. Open Lightroom's **Plugin Manager**.
  3. Push **Add** button and input **remove-empty-folders.lrdevplugin** path.

## How to use

**File** > **Plugin Extras** > **Remove Empty Folders**

Once the folders are moved to Trash a popup message appears with the list of folders removed. Run **Library** > **Synchronize Folder...** to permnanently remove the folders from the catalog.