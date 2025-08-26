import 'package:leekcode_bfs/leekcode_bfs.dart' as leekcode_bfs;

void main() {
  //creates the root node for the binary tree
  leekcode_bfs.TreeNode? root;

  //create an instance of the solution class that peforms the BFS level-order traversal
  final sol = leekcode_bfs.Solution();
  print(sol.levelOrder(root)); 
}


