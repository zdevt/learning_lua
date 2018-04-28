#!/usr/bin/lua 

module = { }

module.constant = "this is a constant"

function module.func1()
  io.write("this is a pulic func\n")
end

local function func2()
  print("this a private func\n")
end

function module.func3()
  func2()
end

return module
