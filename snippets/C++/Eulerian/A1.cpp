#include<bits/stdc++.h>

using namespace std;

#define ll long long

void dfs(int i, vector<vector<int>>& adj, vector<int>& path){
	while(adj[i].size()){
		int j = adj[i].back();
		// delete the connection
		adj[i].pop_back();
		dfs(j,adj,path);
	}
	path.push_back(i);
}
// in theory there is no need to make a function out of this
vector<int> iterativeDfs(int start, vector<vector<int>>& adj){
	stack<int> st;
	st.push(start);
	vector<int> path;
	while (!st.empty()){
		int i = st.top();
		if((int)adj[i].size() == 0){
			path.push_back(i);
			st.pop();
		}
		else{
			int j = adj[i].back();
			// delete the connection
			adj[i].pop_back();
			// ... 
			st.push(j);
		}
	}
	return path;
}
	
int main(){
	int n, m;
	cin >> n >> m;
	vector<vector<int>> adj(n+1);
	vector<int> in(n+1,0), out(n+1,0);
	bool exists = true;
	for(int i = 0; i < m; ++i){
		int a, b;
		cin >> a >> b;
		adj[a].push_back(b);
		//calculate the degree
		++in[b]; ++out[a];
	}
	
	// finding two nodes with odd degree if there are some
	// if there are more than two than it is not possible (exists = false)
    	int v1 = -1, v2 = -1;
	for (size_t i = 1; i <= adj.size(); ++i) {
		if (abs(in[i] - out[i]) == 1) {
			if (v1 == -1 && in[i] - out[i] == 1) v1 = i;
			else if (v2 == -1 && out[i] - in[i] == 1) v2 = i;
			else exists = false;
		}
		else if(abs(in[i] - out[i] > 1)) exists = false;
	}
	// a directed edge between both nodes is added if there exist one to make every in and out equal...
	// v1 (higher in-degree) is the ending node and v2 (higher out degree) is the starting node
	if(v1 != -1 && v2 != -1) adj[v1].push_back(v2);
	
	// settting the starting node to a node with a degree that is not 0
	int start = -1;
	for(int i = 1; i<=n; ++i){
		if(out[i]) {start = i; break;}
	}

	// the dfs is done
	vector<int> path = iterativeDfs(start,adj);

	// we need to remove the connection which we have added if we added one
	if (v1 != -1) {
		for (size_t i = 0; i + 1 < path.size(); ++i) {
			// found the added connection
			if ((path[i] == v1 && path[i + 1] == v2) ) {
				vector<int> path2;
				// virtually the v1 and v2 nodes as start/end (either v1 is start or end...) as end points
				for (size_t j = i + 1; j < path.size(); ++j) path2.push_back(path[j]);
				for (size_t j = 1; j <= i; ++j) path2.push_back(path[j]);
				path = path2;
				break;
			}
		}
	}
	// if there are any other not deleted paths than the graph wasn't connected and therefore there 
	// is it impossible to find a circuit
	for (int i = 0; i < n; ++i) if(adj[i].size()) exists = false;
	
	reverse(path.begin(), path.end());
	// output the solution ...
	if (!exists) cout << -1;
	else for (int x : path) cout << x << " ";

	return 0;
}
