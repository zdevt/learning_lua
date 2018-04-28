#!/usr/local/bin/lua
--       FileName:  sq.lua
--
--    Description:
--
--        Version:  1.0
--        Created:  2018-03-13 11:51:42
--  Last Modified:  2018-04-13 08:34:29
--       Revision:  none
--       Compiler:  gcc
--
--         Author:  zt ()
--   Organization:

sql = require "luasql.sqlite3"
env = sql.sqlite3()
con = env:connect("log.db")

c,s = con:execute("select * from log;")
print(c,s)

row = c:fetch({},"a")
while row do 
  print(string.format("%s",row.STR))
  row=c:fetch(row,"a")
end

con:close()
env:close()


