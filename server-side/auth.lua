PerformHttpRequest("https://github.com/CaduhDEV/clowns-script/blob/master/fxmanifest.lua", function(errorCode, result, headers)
    local version = GetResourceMetadata(GetCurrentResourceName(), 'version', 0)
    print('version')
    if string.find(tostring(result), version) == nil then
        print("\n\r[Clowns-Script] there is a new version available.\n\r")
        print("\n\r[Clowns=Script] https://github.com/CaduhDEV/clowns-script \n\r")
    end
end, "GET", "", "")