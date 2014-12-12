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

  int n,m,a,b,count;
  int fl[10][10] = {};
  int fc[10];
  cin >> n >> m;
  REP(i,m) {
    cin >> a >> b;
    fl[a-1][b-1] = 1;
    fl[b-1][a-1] = 1;
  }
  REP(i,n) {
    count = 0;
    REP(tmp,n){
      fc[tmp] = 0;
    }
    REP(j,n) {
      if(fl[i][j] == 1){
        REP(k,n){
          if(fl[j][k] == 1 && k != i && fl[i][k] != 1 && fl[k][i] != 1) {
            fc[k] = 1;
          }
        }
      }
    }
    REP(tmp,n){
      if(fc[tmp] == 1) count++;
    }
    cout << count << endl;
  }
  return 0;
}