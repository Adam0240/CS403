class TreeNode {
  int val;              //value stored in current node
  TreeNode? left;       //references to children nodes, '?' allows it to be a null value
  TreeNode? right;

  //constructor that initializes the node
  TreeNode(this.val, [this.left, this.right]);
}

class Solution {
  //method to perform level order traversal on binary tree
  List<List<int>> levelOrder(TreeNode? root) {
    final result = <List<int>>[];

    //if tree is empty, return empty list
    if (root == null) return result;

    //initialize the queue with the root node
    final queue = <TreeNode>[root];

    //loops until there are no more nodes in the queue
    while (queue.isNotEmpty) {
      final levelSize = queue.length;
      final level = <int>[];

      //process all nodes for the current level
      for (var i = 0; i < levelSize; i++) {
        final node = queue.removeAt(0);
        level.add(node.val);
        if (node.left != null) queue.add(node.left!);
        if (node.right != null) queue.add(node.right!);
      }

      //after finishing level, add it to the result
      result.add(level);
    }
    return result;
  }
}
