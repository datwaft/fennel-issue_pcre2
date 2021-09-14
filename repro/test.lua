local fennel = require("fennel")

table.insert(fennel["macro-searchers"], function(module_name)
    local filename = fennel["search-module"](module_name, package.cpath)
    if filename then
        local func = "luaopen_" .. module_name
        return function() return package.loadlib(filename, func) end, filename
    end
end)

fennel.dofile("test.fnl")
