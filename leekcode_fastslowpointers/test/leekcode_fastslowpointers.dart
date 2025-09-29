//test
import 'package:test/test.dart';
import 'package:leekcode_fastslowpointers/leekcode_fastslowpointers.dart';

void main() {
  group('Find the Duplicate Number - Floyd cycle detection', () {
    test('Example 1', () {
      expect(Solution().findDuplicate([1, 3, 4, 2, 2]), equals(2));
    });

    test('Example 2', () {
      expect(Solution().findDuplicate([3, 1, 3, 4, 2]), equals(3));
    });

    test('Example 3 - all same', () {
      expect(Solution().findDuplicate([3, 3, 3, 3, 3]), equals(3));
    });

    test('Larger case', () {
      expect(Solution().findDuplicate([2, 5, 9, 6, 9, 3, 8, 9, 7, 1]), equals(9));
    });

    test('Minimum n (n=1 -> nums length=2)', () {
      expect(Solution().findDuplicate([1, 1]), equals(1));
    });
  });
}