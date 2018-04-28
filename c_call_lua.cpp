
/*
 * =========================================================================
 *
 *       FileName:  c_call_lua.cpp
 *
 *    Description:
 *
 *        Version:  1.0
 *        Created:  2018-01-18 18:03:00
 *  Last Modified:  2018-01-19 08:44:52
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
  luaL_openlibs ( L );
  luaL_dofile ( L, "./test.lua" );

  lua_getglobal ( L, "test" );

  lua_pcall ( L, 0, 1, 0 );
  int a = ( int ) lua_tonumber ( L, -1 );
  fprintf ( stderr, "%d\n", a );

  lua_pcall ( L, 0, 1, 0 );
  a = ( int ) lua_tonumber ( L, -1 );
  fprintf ( stderr, "%d\n", a );

  lua_pcall ( L, 0, 1, 0 );
  a = ( int ) lua_tonumber ( L, -1 );
  fprintf ( stderr, "%d\n", a );

  lua_getglobal ( L, "tb1" );
  lua_getfield ( L, -1, "name" );
  std::string str = lua_tostring ( L, -1 );
  std::cout << "str=" << str << std::endl;

  lua_close ( L );


  return 0;
}

