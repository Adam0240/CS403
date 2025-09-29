//lib
//Find the Duplicate Number (LeetCode Fast & Slow Pointers Problem)

class Solution {
  // Finds the duplicate number in the list `nums`.
  int findDuplicate(List<int> nums) {
    // Start both pointers at the first element of the array.
    int slow = nums[0];
    int fast = nums[0];

    // Move slow pointer by 1 step, fast pointer by 2 steps.
    // Keep looping until they meet inside the cycle.
    do {
      slow = nums[slow];
      fast = nums[nums[fast]];
    } while (slow != fast);

    // Reset slow pointer back to the start of the array.
    slow = nums[0];

    // Move both pointers at the same speed (1 step each).
    // The position where they meet is the duplicate number.
    while (slow != fast) {
      slow = nums[slow];
      fast = nums[fast];
    }
    return slow;
  }
}