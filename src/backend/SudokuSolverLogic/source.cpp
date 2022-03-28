#include <vector>

#include "iostream"

void DoSomething(std::vector<std::string>* ds)
{
    for (auto s : ds) std::cout << s << std::endl;
}

int main(int argc, char** argv)
{
    char lel[4];

    lel[0] = 'L';
    lel[1] = 'E';
    lel[2] = 'L';
    lel[3] = '\0';

    std::cout << lel << std::endl;

    std::vector<std::string> lelStrVector;
    
    std::string lelStr(lel);

    lelStrVector.push_back(lelStr);

    DoSomething(&lelStrVector);
    
    return 0;
}