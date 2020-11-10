#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <stdlib.h>
#include <map>

using namespace std;

string averageline(vector<string> &strs){
    string ret = strs[0].substr(0, strs[0].find(","));
    int n = strs.size();
    int m = 0;
    for(auto c:strs[0]) if(c==',') m++;

    vector<vector<double>> vec(n, vector<double>(m,0.00));
    for(int i=0;i<n;i++){
        string str = strs[i];
        auto index = str.find(",")+1;
        istringstream is(str.substr(index, str.size()-index));
        string line;
        int j = 0;
        while(getline(is, line, ',')) { vec[i][j] = atof(line.c_str()); j++;}
    }
    vector<double> tv;
    for(int j=0;j<m;j++){
        double count = 0.00;
        for(int i=0;i<n;i++) count += vec[i][j];
        //vec[0][j] = count/n;
        tv.push_back(count/n);
    }
    for(auto n:tv) ret+=","+to_string(n);
///    for(int i=0;i<m;i++) ret += ","+to_string(vec[0][i]);
    return ret;
}

int main(int argc, char** argv){
    ifstream file(*(argv+1));
    string line;
    int c=0;
    map<string, vector<string>> duplicationMap;
    while(getline(file, line)){
        if(c==0) {c++;continue;}
        string gene = line.substr(0, line.find(","));
        if(duplicationMap.count(gene)) duplicationMap[gene].push_back(line);
        else duplicationMap.insert({gene, {line}});
    }
    auto iterator = duplicationMap.begin();
    while(iterator != duplicationMap.end()){
        cout<<averageline(iterator->second)<<endl;
        iterator++;
    }
    return 0;
}
