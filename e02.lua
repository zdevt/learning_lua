#!/usr/local/bin/lua
--       FileName:  e02.lua
--
--    Description:
--
--        Version:  1.0
--        Created:  2018-03-22 15:45:40
--  Last Modified:  2018-03-22 15:48:50
--       Revision:  none
--       Compiler:  gcc
--
--         Author:  zt ()
--   Organization: 

m={}

function m.pythagorean(a,b)
  local c=a^2+b^2
  return math.sqrt(c)
end

return m

