#!/usr/local/bin/lua
--       FileName:  007.lua
--
--    Description:
--
--        Version:  1.0
--        Created:  2018-01-15 10:41:36
--  Last Modified:  2018-01-15 10:47:28
--       Revision:  none
--       Compiler:  gcc
--
--         Author:  zt ()
--   Organization:


tab1 = { key1="val1",key2 = "val2","val3"}

for k,v in pairs(tab1) do 
  print(k.."-".. v)
end


tab1.key1=nil

for k,v in pairs(tab1) do 
  print(k.."-"..v) 
end 


