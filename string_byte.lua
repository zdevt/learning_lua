#!/usr/local/bin/lua
--       FileName:  a.lua
--
--    Description:
--
--        Version:  1.0
--        Created:  2018-01-16 15:44:28
--  Last Modified:  2018-03-09 10:26:57
--       Revision:  none
--       Compiler:  gcc
--
--         Author:  zt ()
--   Organization: 


str = "123455"

for i=1,string.len(str),1 do 
  print( string.byte(str,i), string.char(string.byte(str,i)))
end

print( string.upper("aa22SSS"))

