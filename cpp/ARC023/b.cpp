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

  int r,c,d;
  int a[1000][1000];
  string temp;
  cin >> r >> c >> d;
  int result = 0;
  REP(i,r){
    REP(j,c){
      cin >> a[i][j];
    }
  }
  REP(i,r){
    REP(j,c){
      if( ( i+j ) % 2 != d % 2) continue;
      if( d < i+j ) continue;
      result = max(result,a[i][j]);
    }
  }
  cout << result << "\n";

  return 0;
}