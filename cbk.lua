


local a = { }
function b( )
  print( "hello " )
end

a[ "sell" ] = { callFunc = b }

-- a[ "sell" ].callFunc( )

s = "sell"
a[ s ].callFunc( )

