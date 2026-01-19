Monarchy = SMODS.current_mod

local function load_files(path)
    print('[Monarchy] - Loading '..path:sub(2, -2))
    local info = NFS.getDirectoryItemsInfo(Monarchy.path .. path)
    table.sort(info, function(a, b)
        return a.name < b.name
    end)
    for _, v in ipairs(info) do
        if string.find(v.name, ".lua") then -- no X.lua.txt files or whatever unless they are also lua files
            assert(SMODS.load_file(path..v.name), string.format('[Monarchy] - Failed to load %s due to an issue in %s', path:sub(2, -2), v.name))()
            print(string.format('[Monarchy/%s] - Loaded %s successfully', path:sub(2,-2), v.name))
        end
    end
end

print('[Monarchy] - Loading')

load_files('/utils/')
load_files('/content/')

print('[Monarchy] - Loaded successfully')