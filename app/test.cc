#include <iostream>

using namespace std;

int main(){
    double d1=1.22;
    double d2=1.33;
    string ret = "gene";
    ret += ","+to_string(d1);
    ret += ","+to_string(d2);
    cout<<ret<<endl;
    double d3 = 0.027823341;
    cout<<d3<<endl;
    return 0;
}
