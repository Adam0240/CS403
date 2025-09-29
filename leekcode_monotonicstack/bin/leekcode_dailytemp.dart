//bin
import 'package:leekcode_monotonicstack/leekcode_dailytemp.dart';

/// Run with: `dart run bin/leekcode_dailytemp.dart`
void main() {
  final solver = DailyTemperaturesSolution();

  final samples = <List<int>>[
    [73, 74, 75, 71, 69, 72, 76, 73], // -> [1,1,4,2,1,1,0,0]
    [30, 40, 50, 60],                 // -> [1,1,1,0]
    [30, 60, 90],                     // -> [1,1,0]
    [90, 80, 70],                     // -> [0,0,0]
    [70],                             // -> [0]
  ];

  for (final temps in samples) {
    final res = solver.dailyTemperatures(temps);
    print('temps=$temps -> $res');
  }
}
