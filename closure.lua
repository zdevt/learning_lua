

function test( )
  local i = 1
  return function ( )
    i = i + 1
    return i
  end
end


c1 = test()
c2 = test()


print( c1( ))
print( c1( ))
print( c2( ))
print( c2( ))

