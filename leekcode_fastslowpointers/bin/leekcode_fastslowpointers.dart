//bin
import 'package:leekcode_fastslowpointers/leekcode_fastslowpointers.dart';

/// Run with: `dart run bin/leekcode_fastslowpointers.dart`
void main() {
  final solver = Solution();

  final cases = <List<int>>[
    [1, 3, 4, 2, 2],
    [3, 1, 3, 4, 2],
    [3, 3, 3, 3, 3],
    [2, 5, 9, 6, 9, 3, 8, 9, 7, 1], 
  ];

  for (final nums in cases) {
    final dup = solver.findDuplicate(nums);
    print('Input: $nums -> Duplicate: $dup');
  }
}