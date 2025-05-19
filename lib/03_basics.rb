def who_is_bigger(val1, val2, val3)

  return "nil detected" if val1.nil? || val2.nil? ||val3.nil?

  letters = ["a","b","c"]
  numbers = [val1, val2, val3]

  index_max = numbers.index(numbers.max)
  return "#{letters[index_max]} is bigger"
end


def reverse_upcase_noLTA(string)
  return string.reverse.upcase.delete("LTA")
end


def array_42(array)
  return array.include?(42)
end


def magic_array(array)
  return array.flatten.sort().map{|n| n * 2}.reject!{|n| n % 3 == 0}.uniq
end