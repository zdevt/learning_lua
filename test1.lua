
function max( num1, num2 )
  if ( num1 > num2 ) then
    return num1
  else
    return num2
  end
end


function callmax( num1, num2, fun )
  return fun( num1, num2 )
end

function average( ... )
  res = 0
  local arg = { ... }
  for i, v in ipairs( arg ) do
    res = res + v
  end
  print( "arg cnt" .. select( "#", ... ) .. " " )
  return res / select( "#", ... )
end

print( average( 1, 2, 2, 2, 33 ))


