local LrApplication = import 'LrApplication'
local LrDialogs = import 'LrDialogs'
local LrTasks = import 'LrTasks'

local catalog = LrApplication.activeCatalog()
local s = ""
local depth = 0
local folders = catalog:getFolders()

local function RecursivelyRemoveEmptyFolder(folders, depth)
    local s = ""
    for i, folder in ipairs(folders) do
        local photos = folder:getPhotos(true)
        if (#photos == 0) 
        then
            s = s .. string.format("%s\n",folder:getName())
            local LrFileUtils = import 'LrFileUtils'
            local path = folder:getPath()
            LrFileUtils.moveToTrash(path)
        else
            childFolders = folder:getChildren()
            if (#childFolders ~= 0)
            then
                s = s .. RecursivelyRemoveEmptyFolder(childFolders, depth + 1, maxDepth)
            end
        end
    end
    return s
end

LrTasks.startAsyncTask(function()
    s = s .. RecursivelyRemoveEmptyFolder(folders, 0)
    if (s ~= "") then
        s = string.format("Following folders in your active catalog have been moved to Trash:\n") .. s
    else
        s = string.format("Could not find any empty folders in your active catalog.")
    end
    LrDialogs.message( "Remove Empty Folders", tostring(s), "info" );
end)

