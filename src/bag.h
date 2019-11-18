#include <iostream>
#include <algorithm>
#include <list>
using namespace std;
class CBag
{
public:
    void add(float item);
    bool isEmpty(){
        return item_list.empty();
    };
    int size(){
        return item_list.size();
    };

    void show();
private:
    list<float> item_list;
};