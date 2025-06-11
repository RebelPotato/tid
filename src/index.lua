local method = GetMethod()
if method == "GET" then
    ServeAsset(WIKI_PATH)
elseif method == "HEAD" then
    local wiki = LoadAsset(WIKI_PATH)
    SetStatus(200)
    SetHeader("Content-Type", "text/html")
    SetHeader("Content-Length", tostring(#wiki))
elseif method == "OPTIONS" then
    SetStatus(200)
    SetHeader("Allow", "GET,HEAD,POST,OPTIONS,CONNECT,PUT,DAV,dav")
    SetHeader("x-api-access-type", "file")
    SetHeader("dav", "tw5/put")   
elseif method == "PUT" then
    local _, err = Barf(WIKI_PATH, GetBody())
    if err then printf("an error occured while saving:", err) end
    SetStatus(204, "No Content")
end