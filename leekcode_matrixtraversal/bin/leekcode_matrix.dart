//bin
import 'package:leekcode_bfs/leekcode_matrix.dart' as leekcode_matrix;

void main() {
  //Example 1
  //creates the first image, basic grid with numbers
  List<List<int>> image1 = [
    [1, 1, 1],
    [1, 1, 0],
    [1, 0, 1],
  ];

  //creates the starting row, starting column, and new color
  int sr1 = 1, sc1 = 1, color1 = 2;

  // Create a Solution object from the flood fill code
  final sol = leekcode_matrix.Solution();

  // Run flood fill on the first example
  final result1 = sol.floodFill(image1, sr1, sc1, color1);
  print(result1); 

  //Example 2 (no change because color already matches) 
  List<List<int>> image2 = [
    [0, 0, 0],
    [0, 0, 0],
  ];
  int sr2 = 0, sc2 = 0, color2 = 0;

  final result2 = sol.floodFill(image2, sr2, sc2, color2);
  print(result2); 
}
