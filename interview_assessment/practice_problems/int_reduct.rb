def solve(n,k)
  char_num = n.to_s.chars
  target_size = char_num.size - k

  loop do 
    nums = []

    char_num.each_with_index do |d, i|
      if i == 0
        nums << char_num[1..-1]
      elsif i == char_num.size-1
        nums << char_num[0...-1]
      else
        nums << char_num[0...i] + char_num[i+1..-1]
      end
    end
    lowest_num = nums.map(&:join).sort![0]
    char_num = lowest_num.to_s.chars
    break if target_size >= char_num.size
  end
  char_num.join
end
