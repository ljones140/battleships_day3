}
# array = Array.new(10){Array.new(10)}



# # array = array.each do |inner_array|
# #   inner_array.map{ |c| c = "monkey"}
# # end



# array = array.map! {|inner_array| inner_array.map! {|x| x = "monkey" } }

# p array





  # def coordinate_converter(coordinate)
  #   alpha_table = {}
  #   (('A'..'Z').zip(0..25)).each { |x| alpha_table[x[0]] = x[1] }
  #   coord_arr = coordinate.to_s.split('')
  #   x = coord_arr[0]
  #   y = coord_arr[1]

  #   x = alpha_table[x.upcase]
  #   y = (y.to_i - 1)

  #   conversion = [x][y]

  #   # puts x
  #   # puts y

  # end

  # p coordinate_converter("B3")

