# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  left = 0
  right = 0
  longest_len = 0
  repeated = {}
  
  while(right < s.length) do
    current_char = s[right]
    if repeated[current_char]
      left = repeated[current_char] + 1 > left ? repeated[current_char] + 1 : left
    end
    
    current_len = right - left + 1
    longest_len = current_len > longest_len ? current_len : longest_len
    repeated[current_char] = right

    right += 1
  end
  
  longest_len
end
