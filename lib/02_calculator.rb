def add(val1, val2)
  return val1 + val2
end

def subtract(val1, val2)
  return val1 - val2
end


def sum(numbers)
result = 0
  unless numbers.empty?
    numbers.each do |number|
    result += number
    end
  else
    return 0
  end

  return result
end


def multiply(val1, val2)
  return val1 * val2
end


def power(val, expo)
  #return val.pow(expo)
  return val ** expo
end


def factor(val)
  result = 1

  for i in 1..val
    result *= i
  end
  return result
end
  