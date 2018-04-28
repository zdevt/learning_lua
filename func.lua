
function aver( ... )
  res = 0
  local arg = { ... }
  for i, v in ipairs( arg ) do
    res = res + v
  end

  return res / #arg
end

function zt( a, b, c )
  return a + b + c
end

function zt2( a, b )
  return a ^ b + a / b + a
end

--print( "avg=", aver( 1, 2, 33 ), zt( 11, 22, 33 ), zt2( 7, 3 ))

