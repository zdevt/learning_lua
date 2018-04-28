#!/usr/local/bin/lua
--       FileName:  game.lua
--
--    Description:
--
--        Version:  1.0
--        Created:  2018-03-13 14:32:01
--  Last Modified:  2018-03-13 14:33:47
--       Revision:  none
--       Compiler:  gcc
--
--         Author:  zt ()
--   Organization:

local M={}

local modelName = ...

_G[modelName] = M

function M.play()
  print("let start it");
end

function M.quit()
  print("you go alawy, i am sure you will be ok")
end

return M


