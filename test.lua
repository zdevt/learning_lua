#!/usr/bin/lua 

--print("Hello world!")
--print("www.zt.com");


--单行注释

--[[
多行注释
多行注释
--]]


tb1 = {name="zzzz",id=111111}

-- 闭包
--
function test()
  local i = 0
  return function()
    i = i + 1
    return i
  end
end 


--c1=test()
--c2=test()

--print(c1());
--print(c1());
--print(c2());
--print(c2());

