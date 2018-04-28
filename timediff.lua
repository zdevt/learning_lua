--       FileName:  get.lua
--
--    Description:
--
--        Version:  1.0
--        Created:  2018-01-16 15:56:31
--  Last Modified:  2018-01-16 15:58:40
--       Revision:  none
--       Compiler:  gcc
--
--         Author:  zt ()
--   Organization:


function time_counter( )
  local t_start = os.time( )
  return function( )
    local t_end = os.time( )
    return ( t_end - t_start )
  end
end

tcnt = time_counter( )

print( tcnt( ))


