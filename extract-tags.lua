if (#arg < 1) then
  io.stderr:write("usage: ", arg[0], " [filename]\n")
  os.exit(1)
end

local file = assert(io.open(arg[1], "r"))

local tags = {}

for line in file:lines() do
  local tagsprop = line:match('Tags="(.-)"')
  if tagsprop then
    for tag in tagsprop:gmatch('(%w+)') do
      if tags[tag] == nil then
        tags[tag] = true
      end
    end
  end
end

for tag in pairs(tags) do print(tag) end
