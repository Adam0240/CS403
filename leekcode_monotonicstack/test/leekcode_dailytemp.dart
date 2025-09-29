//test
import 'package:test/test.dart';
import 'package:leekcode_monotonicstack/leekcode_dailytemp.dart';

void main() {
  group('LeetCode 739 - Daily Temperatures', () {
    test('Example 1', () {
      final out = DailyTemperaturesSolution()
          .dailyTemperatures([73,74,75,71,69,72,76,73]);
      expect(out, equals([1,1,4,2,1,1,0,0]));
    });

    test('Example 2', () {
      final out = DailyTemperaturesSolution()
          .dailyTemperatures([30,40,50,60]);
      expect(out, equals([1,1,1,0]));
    });

    test('Example 3', () {
      final out = DailyTemperaturesSolution()
          .dailyTemperatures([30,60,90]);
      expect(out, equals([1,1,0]));
    });

    test('All decreasing', () {
      final out = DailyTemperaturesSolution()
          .dailyTemperatures([90,80,70]);
      expect(out, equals([0,0,0]));
    });

    test('Plateau then jump', () {
      final out = DailyTemperaturesSolution()
          .dailyTemperatures([70,70,70,71]);
      expect(out, equals([3,2,1,0]));
    });
  });
}