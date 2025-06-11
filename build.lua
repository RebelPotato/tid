local path = require("path")

local redbean = "bin/redbean-3.0.0.com"
local notes = "dist/til.com"

assert(Barf(notes, assert(Slurp(redbean))))
print("Copied " .. redbean .. " to " .. notes)

assert(unix.chdir("src"))
for name, kind, ino, off in assert(unix.opendir(".")) do
  local cmd = '';

  if kind == unix.DT_REG then
    cmd = "../bin/zip.com %s %s" % { path.join("..", notes), name }
  elseif kind == unix.DT_DIR and name ~= '.' and name ~= '..' then
    cmd = "../bin/zip.com -r %s %s" % { path.join("..", notes), name }
  end

  if cmd ~= '' then
    print("Running: " .. cmd)
    assert(os.execute(cmd))
  end
end
assert(unix.chdir(".."))
