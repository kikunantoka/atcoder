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
  int start,end;
  int sh,eh,sm,em;
  int time[289] = {};
  int count=0;
  cin >> n;
  int i = 0;
  while(i<n){
    scanf("%2d%2d-%2d%2d",&sh,&sm,&eh,&em);
    start = (sh * 60 + sm - (sm % 5));
    if(em%5==0)em-=5;
    end = (eh * 60 + em + (5-(em % 5)));
    time[start / 5] += 1;
    time[end / 5 + 1] -= 1;
    i++;
  }

  REP(i,289){
    cout << i*5/60 << ":" << i*5%60 << endl;
    debug(time[i]);
    count += time[i];
    time[i] = count;
  }

  REP(i,289){
    if(time[i]>0){
      start = i * 5;
      while(time[i+1] != 0){
        i++;
      }
      end = i * 5;
      printf("%02d%02d-%02d%02d\n",start/60,start%60,end/60,end%60);
      i++;
    }
  }

  return 0;
}