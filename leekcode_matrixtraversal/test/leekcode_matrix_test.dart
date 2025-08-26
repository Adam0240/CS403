import 'package:leekcode_bfs/leekcode_matrix.dart';
import 'package:test/test.dart';


void main() {
  final sol = Solution();

  group('Flood Fill', () {
    test('Example 1', () {
      final image = [
        [1, 1, 1],
        [1, 1, 0],
        [1, 0, 1],
      ];
      final result = sol.floodFill(image, 1, 1, 2);
      expect(result, [
        [2, 2, 2],
        [2, 2, 0],
        [2, 0, 1],
      ]);
    });

    test('Example 2 (no change)', () {
      final image = [
        [0, 0, 0],
        [0, 0, 0],
      ];
      final result = sol.floodFill(image, 0, 0, 0);
      expect(result, [
        [0, 0, 0],
        [0, 0, 0],
      ]);
    });

    test('Disconnected region', () {
      final image = [
        [1, 0, 1],
        [0, 1, 0],
        [1, 0, 1],
      ];
      final result = sol.floodFill(image, 1, 1, 9);
      expect(result, [
        [1, 0, 1],
        [0, 9, 0],
        [1, 0, 1],
      ]);
    });
  });
}
