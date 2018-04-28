/*
 * =====================================================================================
 *
 *       Filename:  lualib.cpp
 *
 *    Description:
 *
 *        Version:  1.0
 *        Created:  2018-01-19 11:24:04
 *  Last Modified:  2018-03-09 16:06:26
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  zt (),
 *   Organization:
 *
 * =====================================================================================
 */

#include <stdio.h>
#include <stdlib.h>

#include <ctype.h>
#include <errno.h>
#include <string.h>

#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <limits.h>

#include <math.h>

#include <lua.hpp>

// -I/home/zt/test/lua-5.3.4/src
// g++ lualib.cpp -o ztlib.so -fPIC -shared  -llua -ldl

#ifdef __cplusplus
extern "C"
{
#endif

static int zt1 ( lua_State* L )
{
  double d1 = luaL_checknumber ( L, 1 );
  double d2 = luaL_checknumber ( L, 2 );

  lua_pushnumber ( L, d1 + d2 );
  return 1;
}

static const struct luaL_Reg ztlib[] =
{
  { "zt1", zt1},
  {NULL, NULL}
};

int luaopen_lualib ( lua_State* L )
{
  luaL_newlib ( L, ztlib );
  return 1;
}


#ifdef __cplusplus
}
#endif

