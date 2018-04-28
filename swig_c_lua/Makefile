
INC_FLAG = -I /home/zt/git_src/lua

CROSS_COMPILE :=
#CROSS_COMPILE := ~/proj/work/arm-2014.05/bin/arm-none-linux-gnueabi-

mac:
	@swig -c++ -lua hello.i
	@g++ -c hello.cpp -std=c++11 -fPIC
	@g++ -c hello_wrap.cxx  -std=c++11 -fPIC
	@g++ hello.o hello_wrap.o -o hello.so -shared -std=c++11 -llua


linux:
	@swig -c++ -lua hello.i
	@$(CROSS_COMPILE)g++ -c hello.cpp -std=c++11 $(INC_FLAG) -fPIC -lpthread
	@$(CROSS_COMPILE)g++ -c hello_wrap.cxx  -std=c++11 $(INC_FLAG) -fPIC -lpthread
	@$(CROSS_COMPILE)g++ hello.o hello_wrap.o -o hello.so -shared -std=c++11 -lpthread $(INC_FLAG)


clean:
	@rm -f *.o *.so hello_wrap.cxx

