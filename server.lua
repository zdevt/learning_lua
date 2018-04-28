
local socket = require "socket"
local host = "127.0.0.1"
local port = "12345"
local server = assert ( socket.bind( host, port ))
server:settimeout( 0 )
local client_tab = { }
local conn_count = 0

print ( "server start" .. host .. ":" .. port )

while true do
  local conn = server:accept( )
  if conn then
    conn_count = conn_count + 1
    client_tab[ conn_count ] = conn
    print( "a client connect" .. conn )
  end

  for conn_count, client in pairs( client_tab ) do
    local recvt, sendt, status = socket.select({ client }, nil, 1 )
    if #recvt > 0 then
      local receive, receive_status = client:receive( )
      if receive_status ~= "closed" then
        if receive then
          assert( client:send( "Client " .. conn_count .. " send :" ))
          assert( client:send( receive .. "\n" ))
        else
          table.remove( client_tab, conn_count )
          client.close( )
          print( "CLient " .. conn_count .. " disconnect" )
        end

      end
    end
  end
end


