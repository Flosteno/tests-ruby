def echo(string)
  return string
end


def shout(string)
  return string.upcase
end


def repeat(string, *n)
  times = n.empty? ? 2 : n[0]
  array = Array.new(times){string}
  return array.join(" ")
end


def start_of_word(string, n)
  return string[0,n]
end


def first_word(string)
  result = string.split
  return result[0]
end


def titleize(string)
  little_words = ["the","and"]
  capitalized = string.split.map.with_index do |word, index|
    if index == 0
      word.capitalize
    else
      little_words.include?(word) ? word : word.capitalize
    end
  end
    return capitalized.join(" ")
end





