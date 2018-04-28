
/*
 * =========================================================================
 *
 *       FileName:  add.cpp
 *
 *    Description:
 *
 *        Version:  1.0
 *        Created:  2018-01-19 11:05:18
 *  Last Modified:  2018-03-09 16:06:49
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

lua_State* L;
int luaadd ( int x, int y )
{
  int sum;
  /*函数名*/
  lua_getglobal ( L, "add" );
  /*参数入栈*/
  lua_pushnumber ( L, x );
  /*参数入栈*/
  lua_pushnumber ( L, y );
  /*开始调用函数，有2个参数，1个返回值*/
  lua_call ( L, 2, 1 );
  /*取出返回值*/
  sum = ( int ) lua_tonumber ( L, -1 );
  /*清除返回值的栈*/
  lua_pop ( L, 1 );
  return sum;
}

int main ( int argc, char* argv[] )
{
  ( void ) argc;
  ( void ) argv;
  int sum;
  L = luaL_newstate();  /* 创建lua状态机 */
  luaL_openlibs ( L ); /* 打开Lua状态机中所有Lua标准库 */
  /*加载lua脚本*/
  luaL_dofile ( L, "add.lua" );
  /*调用C函数，这个里面会调用lua函数*/
  sum = luaadd ( 99, 10 );
  printf ( "The sum is %d \n", sum );
  /*清除Lua*/
  lua_close ( L );
  return 0;
}

