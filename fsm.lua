

local state = { study = "study", code = "code", relax = "relax" }

bobo = { nowstate = state.study }

function bobo.getstate( )
  return bobo.nowstate
end


function bobo.exchangestate( var )
  bobo.nowstate = var
end

function bobo.iswriteabl( )
  if math.random( 0, 1 ) < 0.2 then
    return true
  end
end

function bobo.istire( )
  return true
end

function bobo.code( )
  print( "i am codeing" )
end

function bobo.relax( )
  print( "i am relax" )
end

function bobo.study( )
  print( "i am study" )
end


i = 1; 
while true do
  i = i + 1; 
  if i > 10 then
    break; 
  end
  if bobo.nowstate == state.study then
    if bobo.istire( ) then
      bobo.relax( )
      bobo.exchangestate( state.relax )
    end
  elseif bobo.nowstate == state.code then
    if bobo.istire( ) then
      bobo.relax( )
      bobo.exchangestate( state.relax )
    end
  elseif bobo.nowstate == state.relax then
    if bobo.iswriteabl( ) then
      bobo.code( )
      bobo.exchangestate( state.code )
    else
      bobo.study( )
      bobo.exchangestate( state.study )
    end
  end
end



