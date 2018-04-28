
/*
 * =========================================================================
 *
 *       FileName:  c_lua_stack.cpp
 *
 *    Description:
 *
 *        Version:  1.0
 *        Created:  2018-01-19 08:27:45
 *  Last Modified:  2018-01-19 08:30:44
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  zt ()
 *   Organization:
 *
 * =========================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stddef.h>
#include <string.h>
#include <signal.h>
#include <errno.h>
#include <unistd.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <sys/socket.h>

#include <iostream>
#include <memory>
#include <algorithm>
#include <vector>
#include <thread>
#include <mutex>
#include <map>
#include <list>
#include <string>
#include <functional>

#include <lua.hpp>


int main ( int argc, char* argv[] )
{
  ( void ) argc;
  ( void ) argv;

  lua_State* L = NULL;
  L = luaL_newstate();
  lua_pushstring ( L, "test test" );
  lua_pushnumber ( L, 20 );

  if ( lua_isstring ( L, 1 ) )
    std::cout << lua_tostring ( L, 1 ) << std::endl;

  if ( lua_isnumber ( L, 2 ) )
    std::cout << lua_tonumber ( L, 2 ) << std::endl;


  lua_close ( L );

  return 0;
}

