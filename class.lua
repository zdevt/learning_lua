#!/usr/local/bin/lua
--       FileName:  class.lua
--
--    Description:
--
--        Version:  1.0
--        Created:  2018-03-13 13:29:52
--  Last Modified:  2018-03-13 13:34:16
--       Revision:  none
--       Compiler:  gcc
--
--         Author:  zt ()
--   Organization:

-- 使用lua进行面向对象编程，声明方法和调用方法统一用冒号，对于属性的调用全部用点号
class = {}
class.__index = class --双下划线

function class:new(x,y)
  local temp = {}
  setmetatable(temp,class)
  temp.x = x
  temp.y = y
  return temp 
end

function class:test()
  print(self.x,self.y)
end

obj = class:new(10,20)

obj.test(obj)

