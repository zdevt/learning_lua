
/*
 * =========================================================================
 *
 *       FileName:  hello.h
 *
 *    Description:
 *
 *        Version:  1.0
 *        Created:  2018-03-14 11:29:54
 *  Last Modified:  2018-03-20 11:13:11
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  zt ()
 *   Organization:
 *
 * =========================================================================
 */


#ifndef HELLO_INC
#define HELLO_INC

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <vector>

#include <thread>
#include <mutex>
#include <string>

int sum ( int a, int b );
int sleep_l ( int s );

class Test
{
  public:
    Test();
    ~Test();

    void Print();
    int Print ( char* s );
    int add ( int a, int b );
    unsigned char* GetS();
    bool Tt ( char* p, int n );

    bool Refa ( double a, double b );

    int push ( int a );
    int pop();

    void Task();
    int Get();

  private:
    int a;
    int b;
    int c;

    bool flag;
    std::vector<int> m_vec;
    std::thread m_thead;
    std::mutex m_mutex;
};


#endif /*  HELLO_INC  */

