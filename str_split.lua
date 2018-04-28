

function string:split( sep )
  local sep, fields = sep or ":", { }
  local pattern = string.format( "([^%s]+)", sep )
  self:gsub( pattern, function ( c )
    fields[ #fields + 1 ] = c
  end )
  return fields
end

local num = 0
local str = "1sss#2ddd#3kk"

local result = str:split( "#" )

num = #result

--print( num )
print( result[ 1 ])
print( result[ 2 ])

local imgName = "img"
local fileName = string.format( "%s.png", imgName )



