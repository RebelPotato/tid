WIKI_PATH = arg[1] or "wiki.html"
-- test if the file exists and is readable and writable
local fd = assert(unix.open(WIKI_PATH, unix.O_RDWR))
unix.close(fd)
Log(kLogInfo, "Tid: a simple TiddlyWiki autosaver")
LaunchBrowser()