def two_sum(nums, target)
  h = {}
  nums.each_with_index do |n, i|
    comp = target - n
    return [i, h[comp]] if h[comp]
    h[n] = i
  end
end
