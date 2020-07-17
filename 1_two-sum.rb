# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  map = {}
  nums.each_with_index { |num, index| map[num] = index }

  nums.each_with_index do |num, index|
    diff = target - num
    return [index, map[diff]] if map[diff] && map[diff] != index
  end
end
