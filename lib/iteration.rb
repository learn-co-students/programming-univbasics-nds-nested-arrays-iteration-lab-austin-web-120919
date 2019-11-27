def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  outer_index = 0
  new_array = []
  while outer_index < src.length do
    src[outer_index] = "I love #{src[outer_index][0]} and #{src[outer_index][1]} on my pizza"
    new_array << src[outer_index]
    outer_index += 1
  end
  return new_array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  outer_index = 0
  new_array = []

  while outer_index < src.length do
    new_array << src[outer_index].max
    outer_index += 1
  end
  return new_array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  outer_index = 0
  total = 0
  while outer_index < src.length do
    inner_index = 0
    if (src[outer_index][inner_index] % 2 == 0 && src[outer_index][inner_index + 1] % 2 == 0)
      total += src[outer_index][inner_index]
      total += src[outer_index][inner_index + 1]
      outer_index += 1
    else
      outer_index += 1
    end
  end
  return total
end
