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
  int deg;
  double dis;
  string sdeg[16] = {"N","NNE","NE","ENE","E","ESE","SE","SSE","S","SSW","SW","WSW","W","WNW","NW","NNW"};
  cin >> deg >> dis;
  deg *= 10;
  deg += 1124;
  deg /= 2250;
  deg %= 16;
  dis /= 6;
  dis = round(dis);
  if (dis <= 2 ) cout << "C" << " 0\n";
  else if (dis <= 15) cout << sdeg[deg] << " 1\n";
  else if (dis <= 33) cout << sdeg[deg] << " 2\n";
  else if (dis <= 54) cout << sdeg[deg] << " 3\n";
  else if (dis <= 79) cout << sdeg[deg] << " 4\n";
  else if (dis <= 107) cout << sdeg[deg] << " 5\n";
  else if (dis <= 138) cout << sdeg[deg] << " 6\n";
  else if (dis <= 171) cout << sdeg[deg] << " 7\n";
  else if (dis <= 207) cout << sdeg[deg] << " 8\n";
  else if (dis <= 244) cout << sdeg[deg] << " 9\n";
  else if (dis <= 284) cout << sdeg[deg] << " 10\n";
  else if (dis <= 326) cout << sdeg[deg] << " 11\n";
  else cout << sdeg[deg] << " 12\n";

  return 0;
}