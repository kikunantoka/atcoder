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

  string r0,r1,r2,r3;
  getline(cin,r3);
  getline(cin,r2);
  getline(cin,r1);
  getline(cin,r0);

  reverse(r0.begin(),r0.end());
  reverse(r1.begin(),r1.end());
  reverse(r2.begin(),r2.end());
  reverse(r3.begin(),r3.end());

  cout << r0 << "\n";
  cout << r1 << "\n";
  cout << r2 << "\n";
  cout << r3 << "\n";

  return 0;
}