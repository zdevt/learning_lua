
m = require "hello"
c = m.Test( )

--function func( )
--local c = m.Test( )
--print( c:Get( ))
--c:push( 3 )
--c:push( 7 )
--c:push( 1 )
--print( c:pop( ))
--c:Print( "asdfasdf" )
--c = nil
--end

--func( )

repeat
  n = c:Get( )
  --print("a")
until ( n % 10001 == 0 )

b = c:Refa( 1.2, 2.3 )
print( b )

s = "\1\2\3\4"
c:Tt( s, 4 )

-- i = 0;
-- repeat
--   i = i + 1
--   print( "aaaaaa" )
--   m.sleep_l( 1 )
-- until( i > 3 )
