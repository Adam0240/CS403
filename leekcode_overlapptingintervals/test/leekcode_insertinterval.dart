//test
import 'package:test/test.dart';
import 'package:leekcode_overlappingintervals/leekcode_insertinterval.dart';

void main() {
  group('LeetCode 57 - Insert Interval', () {
    test('Example 1', () {
      final out = InsertIntervalSolution().insert([[1,3],[6,9]], [2,5]);
      expect(out, equals([[1,5],[6,9]]));
    });

    test('Example 2', () {
      final out = InsertIntervalSolution().insert([[1,2],[3,5],[6,7],[8,10],[12,16]], [4,8]);
      expect(out, equals([[1,2],[3,10],[12,16]]));
    });

    test('Empty intervals', () {
      final out = InsertIntervalSolution().insert([], [5,7]);
      expect(out, equals([[5,7]]));
    });

    test('New inside existing', () {
      final out = InsertIntervalSolution().insert([[1,5]], [2,3]);
      expect(out, equals([[1,5]]));
    });

    test('New extends existing', () {
      final out = InsertIntervalSolution().insert([[1,5]], [2,7]);
      expect(out, equals([[1,7]]));
    });

    test('Insert at start non-overlap', () {
      final out = InsertIntervalSolution().insert([[5,7]], [1,3]);
      expect(out, equals([[1,3],[5,7]]));
    });

    test('Insert at end non-overlap', () {
      final out = InsertIntervalSolution().insert([[1,2]], [5,7]);
      expect(out, equals([[1,2],[5,7]]));
    });

    test('Chain merging across multiple', () {
      final out = InsertIntervalSolution().insert([[1,4],[6,8],[10,12]], [3,11]);
      expect(out, equals([[1,12]]));
    });
  });
}