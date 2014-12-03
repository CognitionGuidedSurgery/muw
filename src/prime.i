%module prime
%{

#include <iostream>

bool is_prime(int cand) {
    int i;
    for(i = 2; i <= cand / 2; i++)
    {
        if(cand%i==0) {
            std::cout << cand << " not prime, witness " << i << std::endl;
            return false;
        }
    }
    std::cout << cand << " prime" << std::endl;
    return true;
}


%}

#DEFINE __author__ "Alexander Weigl <uiduw@student.kit.edu>"
#DEFINE __date__   "2014-12-03"

bool is_prime(int cand);

