#pragma once 
#include <iostream>

#define DEBUG true


namespace shb{

    class sDebug{
     public:
        static void log(const char* str) { 
            if(DEBUG){
                std::cout<< str << "\n";
              }
        }
    };
#define LOG(x) sDebug::log(x)


}//namespace shb