import 'package:leekcode_overlappingintervals/leekcode_insertinterval.dart';

void main() {
  final solver = InsertIntervalSolution();

  final samples = <Map<String, dynamic>>[
    {
      'intervals': [
        [1, 3],
        [6, 9]
      ],
      'new': [2, 5]
    },
    {
      'intervals': [
        [1, 2],
        [3, 5],
        [6, 7],
        [8, 10],
        [12, 16]
      ],
      'new': [4, 8]
    },
    {
      'intervals': <List<int>>[],
      'new': [5, 7]
    },
    {
      'intervals': [
        [1, 5]
      ],
      'new': [2, 3]
    },
    {
      'intervals': [
        [1, 5]
      ],
      'new': [2, 7]
    },
  ];

  for (final sample in samples) {
    final intervals = (sample['intervals'] as List).map<List<int>>((e) => (e as List).cast<int>()).toList();
    final newInt = (sample['new'] as List).cast<int>();
    final out = solver.insert(intervals, newInt);
    print('intervals=$intervals new=$newInt -> $out');
  }
}
