class Solution {
    fun twoSum(nums: IntArray, target: Int): IntArray {
        val m = mutableMapOf<Int, Int>()
        nums.forEachIndexed { i, n -> 
            m[target - n]?.let { return intArrayOf(i, it) }
            m[n] = i
        }
        return intArrayOf()
    }
}
