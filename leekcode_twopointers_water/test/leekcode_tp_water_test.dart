import 'package:test/test.dart';
import 'package:leekcode_bfs/leekcode_tp_water.dart';

void main() {
  group('Container With Most Water', () {
    final sol = Solution();

    test('Example 1', () {
      expect(sol.maxArea([1,8,6,2,5,4,8,3,7]), equals(49));
    });

    test('Example 2', () {
      expect(sol.maxArea([1,1]), equals(1));
    });

    test('Strictly increasing heights', () {
      expect(sol.maxArea([1,2,3,4,5,6,7,8,9,10]), equals(25));
      // best is between height[0] = 1 and height[9] = 10 => 1*9 = 9
      // but better is between height[4]=5 and height[9]=10 => 5*5 = 25
    });

    test('Strictly decreasing heights', () {
      expect(sol.maxArea([10,9,8,7,6,5,4,3,2,1]), equals(25));
    });

    test('Zeros in input', () {
      expect(sol.maxArea([0,0,0,0]), equals(0));
    });

    test('Single tall peak', () {
      expect(sol.maxArea([1,2,1]), equals(2));
    });
  });
}
