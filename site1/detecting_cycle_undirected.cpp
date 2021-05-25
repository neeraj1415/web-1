#include<bits/stdc++.h>
using namespace std;

bool solve(int i,vector<vector<int>> &v,vector<int> &color)
{
    if(color[i]==2)return true;
    color[i]=1;
    for(auto it:v[i])
    {  if(color[it]==1)
    color[it]=2;
    else{
        if(solve(it,v,color)) 
        return true;

    }
    }return false;
}
bool iscyclic(vector<vector<int>> &v)
{vector<int>color(4,0);
for(int i=0;i<4;i++)
{   color[i]=1;
for(auto it:v[i])
    if(solve(it,v,color))return true;
    color[i]=0;
}
    return false;
}
int main()
{  
  vector<vector<int>> v ;
  v[0].push_back(1);  v[1].push_back(0);
   v[2].push_back(0);  v[0].push_back(2);
    v[0].push_back(3);  v[3].push_back(0);
     
  cout<<iscyclic(v);

    return 0;
}