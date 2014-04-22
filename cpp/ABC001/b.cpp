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

  double m;
  cin >> m;
  cout.width(2);
  cout.fill('0');
  if (m > 70000) cout << "89\n";
  else if (m >= 35000) cout << (m / 1000 - 30) / 5 + 80 << "\n";
  else if (m >= 6000 && m <= 30000) cout << (m / 1000) + 50 << "\n";
  else if (m >= 100 && m <= 5000) cout << (m / 100) << "\n";
  else cout << "00\n";
  return 0;
}