#include <iostream>
using namespace std;

int main(){
    string s = "1,2,3,4,5";
    string delim = ",";
    auto start = 0;
    auto end = s.find(delim);
    while(end != string::npos){
        cout<<start<<"-"<<end<<endl;
        cout<<s.substr(start, end-start)<<endl;;
        start = end + delim.size();
        end = s.find(delim, start);
    }
    cout<<s.substr(start, end);
    return 0;
}
