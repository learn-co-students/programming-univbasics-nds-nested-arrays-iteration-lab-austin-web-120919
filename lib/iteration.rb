def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  pizza_lover = []
  pizza_pair = 0
  while pizza_pair < src.count do
    pizza_lover << "I love #{src[pizza_pair][0]} and #{src[pizza_pair][1]} on my pizza"
    pizza_pair += 1
  end
  return pizza_lover
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  larger_array = []
  current_pair = 0
  while current_pair < src.count do
    if (src[current_pair][0] > src[current_pair][1])
      larger_array << src[current_pair][0]
    else
      larger_array << src[current_pair][1]
    end
    current_pair += 1
  end
  return larger_array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  even_total = 0
  current_pair = 0
  while current_pair < src.count do
    if (src[current_pair][0] % 2 == 0 && src[current_pair][1] % 2 == 0)
      even_total += (src[current_pair][0] + src[current_pair][1])
    end
    current_pair += 1
  end
  return even_total
end
