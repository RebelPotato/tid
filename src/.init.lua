WIKI_PATH = arg[1] or "index.html"
-- test for file
local fd = assert(unix.open(WIKI_PATH, unix.O_RDWR))
unix.close(fd)