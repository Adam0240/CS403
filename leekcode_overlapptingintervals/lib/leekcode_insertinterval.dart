//lib

class InsertIntervalSolution {
    // Inserts a new interval into a list of non-overlapping, sorted intervals, merges if needed
  List<List<int>> insert(List<List<int>> intervals, List<int> newInterval) {
    final result = <List<int>>[];

    // Index to iterate through the existing intervals.
    int i = 0;

    // Total number of intervals in the input list.
    final n = intervals.length;

    // Extract the start and end of the new interval we want to insert.
    int start = newInterval[0];
    int end = newInterval[1];

    // 1) Add all intervals ending before newInterval starts (no overlap).
    while (i < n && intervals[i][1] < start) {
      result.add([intervals[i][0], intervals[i][1]]);
      i++;
    }

    // 2) Merge all intervals that overlap with newInterval.
    // Overlap condition: intervals[i].start <= end
    while (i < n && intervals[i][0] <= end) {
      // Expand the start to the smaller value.
      start = start < intervals[i][0] ? start : intervals[i][0];

      // Expand the end to the larger value.
      end = end > intervals[i][1] ? end : intervals[i][1];
      i++;
    }

    // After merging all overlaps, add the merged interval to the result.
    result.add([start, end]);

    // 3) Add all intervals that come after the new interval
    
    while (i < n) {
      result.add([intervals[i][0], intervals[i][1]]);
      i++;
    }

    //Return the final list of intervals 
    return result;
  }
}