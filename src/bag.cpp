#include "bag.h"
void CBag::add(float item)
{
    item_list.push_back(item);
}

void CBag::show()
{
    for_each(item_list.begin(),item_list.end(),[](float value){cout << value << " ";});
}