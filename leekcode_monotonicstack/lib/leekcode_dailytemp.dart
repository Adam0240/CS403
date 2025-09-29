//lib

// LeetCode 739. Daily Temperatures

class DailyTemperaturesSolution {
  List<int> dailyTemperatures(List<int> temps) {
    final n = temps.length;                 // total days
    final ans = List<int>.filled(n, 0);     // default 0 (no warmer day)
    final stack = <int>[];                  // holds indices with decreasing temps

    // Loop over each day from left to right
    for (int i = 0; i < n; i++) {
      // Resolve earlier days that are colder than today.
      while (stack.isNotEmpty && temps[i] > temps[stack.last]) {
        final prev = stack.removeLast();    // index of earlier day
        ans[prev] = i - prev;               // days to wait
      }
      stack.add(i);                         // wait for a warmer day for i
    }
    return ans;
  }
}