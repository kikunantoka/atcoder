//include
//------------------------------------------
#include <iostream>
#include <vector>
#include <list>
#include <map>
#include <set>
#include <queue>
#include <deque>
#include <stack>
#include <bitset>
#include <algorithm>
#include <functional>
#include <numeric>
#include <utility>
#include <sstream>
#include <iomanip>
#include <cstdio>
#include <cmath>
#include <cstdlib>
#include <cctype>
#include <string>
#include <cstring>
#include <ctime>
using namespace std;

//repetition
//------------------------------------------
#define FOR(i,a,b) for(int i=(a);i<(b);i++)
#define REP(i,n)  FOR(i,0,n)

//conversion
//------------------------------------------
inline int toInt(string s) {int v; istringstream sin(s);sin>>v;return v;}
template<class T> inline string toString(T x) {ostringstream sout;sout<<x;return sout.str();}

//debug
//-------------------------------------------
#define dump(x)  cerr << #x << " = " << (x) << endl;
#define debug(x) cerr << #x << " = " << (x) << " (L" << __LINE__ << ")" << " " << __FILE__ << endl;

int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  int n;
  cin >> n;
  int tmp;
  vector<int> data;
  vector<int> surf;
  vector<double> result;
  double final_result;
  REP(i,n){
    cin >> tmp;
    data.push_back(tmp);
    surf.push_back(0);
  }

  do{
    REP(i,surf.size()){
      surf[i] = 0;
    }
    REP(i,data.size()){
      FOR(j,i+1,data.size()){
        if(data[j] % data[i] == 0) {
          if(surf[j] == 0) surf[j] = 1;
          else surf[j] = 0;
        }
      }
    }
    tmp = 0;
    REP(i,data.size()){
      if(surf[i] == 0){
        tmp++;
      }
    }
    result.push_back(tmp);
  }while(next_permutation(data.begin(), data.end()));

  REP(i,result.size()){
    final_result += result[i];
  }
  printf("%.12f\n",final_result / result.size());
  return 0;
}