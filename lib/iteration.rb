def join_ingredients(src)
 
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
  new_array = []
  old_pair = 0 
  while old_pair < src.count do
    if src[old_pair][0] > src[old_pair][1]
      new_array << src[old_pair][0]
    else 
      new_array << src[old_pair][1]
    end
    old_pair += 1 
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
  
  total = 0 
  num_pair = 0 
  while num_pair < src.count do
    if (src[num_pair][0] % 2 == 0 && src[num_pair][1] % 2 == 0)
      total += (src[num_pair][0] + src[num_pair][1])
    end
    num_pair += 1 
  end
  return total 
end
