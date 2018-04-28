#!/usr/local/bin/lua
--       FileName:  01.lua
--
--    Description:
--
--        Version:  1.0
--        Created:  2017-11-22 14:20:34
--  Last Modified:  2017-11-22 14:25:14
--       Revision:  none
--       Compiler:  gcc
--
--         Author:  zt ()
--   Organization:

function fa(n)
  if n == 0 then
    return 1
  else 
    return n * fa(n-1)
  end
end 


print(fa(5))


