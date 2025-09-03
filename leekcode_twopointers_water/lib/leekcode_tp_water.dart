//lib

// Solve the "Container With Most Water" problem using the two-pointers technique.

class Solution {
  int maxArea(List<int> height) {
    // Initialize two pointers at the ends of the array
    int left = 0, right = height.length - 1;

    // Track the maximum area found so far
    int best = 0;

    // Continue until the two pointers meet
    while (left < right) {
      // The limiting height is the shorter of the two lines
      final h = height[left] < height[right] ? height[left] : height[right];

      // Calculate the current container area = height * width
      final area = h * (right - left);

      // Update the best area if this one is larger
      if (area > best) best = area;

      // Move the pointer at the shorter line inward,
      // because moving the taller line cannot increase the area:
      // - Width always decreases when moving inward
      // - To potentially increase area, we need a taller line
      if (height[left] <= height[right]) {
        left++;   // shift left pointer rightward
      } else {
        right--;  // shift right pointer leftward
      }
    }

    // Return the maximum area found
    return best;
  }
}
