
# # array = Array.new(10){Array.new(10)}



# # # array = array.each do |inner_array|
# # #   inner_array.map{ |c| c = "monkey"}
# # # end



# # array = array.map! {|inner_array| inner_array.map! {|x| x = "monkey" } }

# # p array





#   # def coordinate_converter(coordinate)
#   #   alpha_table = {}
#   #   (('A'..'Z').zip(0..25)).each { |x| alpha_table[x[0]] = x[1] }
#   #   coord_arr = coordinate.to_s.split('')
#   #   x = coord_arr[0]
#   #   y = coord_arr[1]

#   #   x = alpha_table[x.upcase]
#   #   y = (y.to_i - 1)

#   #   conversion = [x][y]

#   #   # puts x
#   #   # puts y

#   # end

#   # p coordinate_converter("B3")



# # def place(ship, coordinate, direction, grid = @grid)
# #     @grid.insert(ship, coordinate)
# #     array = coordinate.scan(/\d+|\D+/)
# #     number = array[1]
# #     letter = array[0]
# #     (ship.size).times do
# #       if direction == :horizontal
# #         number = number.next
# #       elsif direction == :vertical
# #         letter = letter.next
# #       else
# #         return "not valid coordinate"
# #       end
# #       coordinate = (letter + number)
# #       @grid.insert(ship, coordinate)
# #     end
# #     ship.confirm_place
# #     add_ship ship
# #   end



# def coordinate_transform(coordinate)
#   array = coordinate.scan(/\d+|\D+/)
#   letter = array[0]
#   number = array[1]
#   10.times do
#     #if direction == :horizontal
#     number = number.next
#     puts number
#   #   elsif direction == :vertical
#     letter = letter.next
#     puts letter
#   #   else
#   #     return "not valid coordinate"
#      # end

#    end
# end


# p coordinate_transform("B3")

# def move(size, coordinate)
#   array = coordinate.scan(/\d+|\D+/)
#   letter = array[0]
#   number = array[1]
#   (size).times do
#     number = number.next
#     puts number
#     letter = letter.next
#     puts letter
#   end
# end

# move(10, "T2")




