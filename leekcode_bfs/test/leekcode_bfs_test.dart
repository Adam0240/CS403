import 'package:leekcode_bfs/leekcode_bfs.dart';
import 'package:test/test.dart';

void main() {
  test('levelOrder traversal', () {
    final root = TreeNode(
      3,
      TreeNode(9),
      TreeNode(20, TreeNode(15), TreeNode(7)),
    );

    final sol = Solution();
    expect(sol.levelOrder(root), equals([[3], [9, 20], [15, 7]]));
  });
}
