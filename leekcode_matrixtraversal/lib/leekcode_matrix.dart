//lib
import 'dart:collection';

class Solution {
  // Performs a flood fill starting at (sr, sc).
  List<List<int>> floodFill(List<List<int>> image, int sr, int sc, int color) {
    final int m = image.length;         // number of rows
    final int n = image[0].length;      // number of columns
    final int start = image[sr][sc];    // starting cell color

    // If the new color equals the original, nothing to do.
    if (start == color) return image;

    // Directions to move: down, up, right, left
    const dirs = [
      [1, 0],
      [-1, 0],
      [0, 1],
      [0, -1],
    ];

    // Queue for BFS, begins with the starting cell
    final q = Queue<List<int>>()..add([sr, sc]);

    while (q.isNotEmpty) {
      final cell = q.removeFirst();     //take next cell from queue
      final r = cell[0], c = cell[1];

      // skip cell if color has already changed
      if (image[r][c] != start) continue;

      // change color of current cell
      image[r][c] = color;

      // look at 4 neighbors (up/down/right/left)
      for (final d in dirs) {
        final nr = r + d[0];
        final nc = c + d[1];

        //check if neighbor is inside the grid
        final inBounds = (nr >= 0 && nr < m && nc >= 0 && nc < n);

        //if neighbor has the original color add it to the queue
        if (inBounds && image[nr][nc] == start) {
          q.add([nr, nc]);
        }
      }
    }

    return image;
  }
}
