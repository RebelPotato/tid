local method = GetMethod()
if method == "GET" then
  local wiki = assert(Slurp(WIKI_PATH))
  Write(wiki)
elseif method == "HEAD" then
  local wiki = assert(Slurp(WIKI_PATH))
  SetStatus(200)
  SetHeader("Content-Type", "text/html")
  SetHeader("Content-Length", tostring(#wiki))
elseif method == "OPTIONS" then
  SetStatus(200)
  SetHeader("Allow", "GET,HEAD,POST,OPTIONS,CONNECT,PUT,DAV,dav")
  SetHeader("x-api-access-type", "file")
  SetHeader("dav", "tw5/put")
elseif method == "PUT" then
  assert(Barf(WIKI_PATH, GetBody()))
  SetStatus(204, "No Content")
end
