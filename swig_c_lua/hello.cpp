
/*
 * =========================================================================
 *
 *       FileName:  hello.cpp
 *
 *    Description:
 *
 *        Version:  1.0
 *        Created:  2018-03-14 11:29:52
 *  Last Modified:  2018-03-20 11:13:15
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  zt ()
 *   Organization:
 *
 * =========================================================================
 */

#include "hello.h"

int sleep_l ( int s )
{
  sleep ( s );
  return 0;
}

int sum ( int a, int b )
{
  return a + b;
}

Test::Test()
{
  flag = true;
  a = 3;
  b = 10;
  c = 0;
  m_thead = std::thread ( &Test::Task, this );
  //fprintf ( stderr, "Test:Test\n" );
}

Test::~Test()
{
  //fprintf ( stderr, "Test:~Test\n" );
  flag = false;

  if ( m_thead.joinable() )
    m_thead.join();
}

void Test::Task()
{
  //fprintf ( stderr, "%d %d %d\n", getpid(), getppid(), getuid() );

  while ( flag )
  {
    {
      std::lock_guard<std::mutex> a ( m_mutex );
      c++;
    }
    std::this_thread::sleep_for ( std::chrono::microseconds ( 1 ) );
  }
}

int Test::Get()
{
  std::lock_guard<std::mutex> a ( m_mutex );
  return c;
}

int Test::add ( int a, int b )
{
  sleep ( 3 );
  return a + b;
}

void Test::Print()
{
  printf ( "%d %d\n", a, b );
}

int Test::Print ( char* s )
{
  memcpy ( s, "1234", 4 );
  fprintf ( stderr, "%s\n", s );
  return 4;
}

int Test::push ( int a )
{
  m_vec.push_back ( a );
  return a;
}

int Test::pop()
{
  int a = m_vec.back();
  m_vec.pop_back();
  return a;
}

unsigned char* Test::GetS()
{
  static unsigned char g_s[] = { 0xaa, 0x55, 0x1, 0x2, 0x3};
  return g_s;
}

bool Test::Refa ( double a, double b )
{
  fprintf ( stderr, "%f %f\n", a, b );
  return true;
}

bool Test::Tt ( char* p, int n )
{
  for ( int i = 0; i < n ; ++i )
  {
    fprintf ( stderr, "0x%02x ", p[i] );
  }

  return false;
}
