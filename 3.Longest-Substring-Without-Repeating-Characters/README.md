# [Longest Substring Without Repeating Characters](https://leetcode.com/problems/longest-substring-without-repeating-characters/)

## Description

Given a string s, find the length of the longest substring without repeating characters.

 


#### Example:

```
Example 1:

Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3.

Example 2:

Input: s = "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.

Example 3:

Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.

Example 4:

Input: s = ""
Output: 0

```



## Notes

找一个字符串中最长连续不重复的字符的长度

如何计算长度 长度等于两个字母所在索引相减加1

那么就需要取得索引，索引可通过循环字符串得到
同时注意到需要两个索引，左索引和右索引

右索引比较简单，主要职责是右移，以至遍历整个字符串
左索引是关键，当右索引遇到重复字符时，
左需要判断自身是否处在重复索引和右索引的范围之间，
如在，则不需要移动
如不在，则将左索引移动到重复字符的右侧1位，
以确保右索引减左索引加1得到的长度一定为非重复字符串长度

直到右索引遍历完整个字符串


右移即为将索引加1
判断是否在重复索引和右索引范围之间实为比较索引的长度
因为右索引不变，比较长度则等价于比较左索引的大小
最终左索引移动位置则转化为取当前左索引和重复字符的索引右侧加1的大小

那么在每一个循环当中 要么右索引移位，要么左索引移位，两者之间的长度一定会发生变化
自然而然的，需要在每一个循环中计算当前长短，并与最长长度进行比较，取两者之间的大着

重复字符索引的计算方法，既然的重复的，那就证明上一次遍历过这个字符，
在每次循环最后将字符的值作为键，将此时的索引作为值存在hash里就可以了
