# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return '' if strs.empty?
  low = 0
  high = strs.reduce(strs[0].length) { |a, b| [a, b.length].min }

  while low < high
    mid = (high + low) / 2

    if prefix?(strs, mid)
      low = mid + 1
    else
      high = mid
    end
  end

  high == 0 ? '' : strs[0][0..high-1]
end

def prefix?(strs, len)
  str = strs[0][0..len]
  strs.all? { |s| s.start_with?(str) }
end
