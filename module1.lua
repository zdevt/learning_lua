
module = { }

module.constant = "this is a constant"


function module.func1( )
  io.write( "this is a public fun" )
end

local function func2( )
  io.write( "this a private fun" )
end

function module.fun3( )
  func2( )
end

return module
