#!/usr/local/bin/lua
--       FileName:  004.lua
--
--    Description:
--
--        Version:  1.0
--        Created:  2017-11-25 11:14:54
--  Last Modified:  2017-11-25 11:17:38
--       Revision:  none
--       Compiler:  gcc
--
--         Author:  zt ()
--   Organization:

tab1 = { key1="val1",key2="val2","val3"}

for k,v in pairs(tab1) do 
  print(k .. " - " .. v )
end

tab1.key1 = nil
for k,v in pairs(tab1) do 
  print(k .. " - " .. v )
end 

