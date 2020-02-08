def join_ingredients(src)
  pizzas = []
  count = 0
  while count < src.count do
    pizzas.push("I love #{src[count][0]} and #{src[count][1]} on my pizza")
    count += 1
  end
  pizzas
end
#array_1 = [['pepperoni', 'sausage'], ['green olives', 'green peppers'], ['onions', 'pineapple']]

# Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair


def find_greater_pair(src)
  maxes = []
  counter = 0
  while counter < src.count do
    maxes.push(src[counter].max)
    counter += 1
  end
  maxes
end

  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays


def total_even_pairs(src)
  total = 0
  row_index = 0
    while row_index < src.count do
      if src[row_index][0] % 2 == 0 && src[row_index][1] % 2 == 0
        total += src[row_index][0] + src[row_index][1]
      end
      row_index += 1
    end
  total
end



#a.values_at(* a.each_index.select {|i| i.even?})
#array2.map{ |n| n if n % 2 == 0 }.compact
#array_3 = [[86262, 58115], [22558, 97709], [66236, 28056], [25992, 81375], [11248, 56789], [42783, 27353], [70796, 63432], [53234, 63058], [72316, 8675309]]
