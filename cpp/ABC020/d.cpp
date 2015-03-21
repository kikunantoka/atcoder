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

int gcd( int m, int n )
{
  if ( ( 0 == m ) || ( 0 == n ) ) return 0;
  while( m != n )
  {
    if ( m > n ) m = m - n;
    else         n = n - m;
  }
  return m;
}

int lcm( int m, int n )
{
  if ( ( 0 == m ) || ( 0 == n ) ) return 0;
  return ((m / gcd(m, n)) * n);
}

int main() {
  cin.tie(0);
  ios::sync_with_stdio(false);

  int n,k;
  cin >> n >> k;
  long long res = 0;
  int i;
  for(i=1;i<=n;i++){
    res += lcm(i,k);
  }
  cout << res % 1000000007 << endl;

  return 0;
}