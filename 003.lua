#!/usr/local/bin/lua
--       FileName:  003.lua
--
--    Description:
--
--        Version:  1.0
--        Created:  2017-11-23 16:22:21
--  Last Modified:  2018-03-13 13:39:59
--       Revision:  none
--       Compiler:  gcc
--
--         Author:  zt ()
--   Organization:

function average(...)
  res = 0
  local arg ={...}
  for i,v in ipairs(arg) do 
    res = res + v
  end

  print("total"..#arg .. "s")

  return res/#arg 
end 

print("avg=", average(1,2,2,3,3,3))
