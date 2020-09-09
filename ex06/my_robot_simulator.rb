# A function that simulate a robot
# The robot factory manufactures robots that have three possible movements:
# • turn right
# • turn left
# • advance
# Robots are placed on a hypothetical infinite grid, facing a particular direction (north, east, south, or
# west) at a set of {x,y} coordinates, e.g., {3,8}.
# and The robot simulator function take a string of letters and return a hash containing the last coordinates
# of the robot as it simulates the instructed movement path and direction

def my_robot_simulator(instr)
    coordinates = {:x => 0, :y => 0, :bearing => 'north'}
    ins = instr.upcase.split("")
    !ins.empty? && ins.each do |i|
        case i
        when 'R'
            case coordinates[:bearing]
            when "north"
                coordinates[:bearing] = "east"
            when "south"
                coordinates[:bearing] = "west"
            when "east"
                coordinates[:bearing] = "south"
            else 
                coordinates[:bearing] = "north" 
            end
        when 'L'
            case coordinates[:bearing]
            when "north"
                coordinates[:bearing] = "west"
            when "south"
                coordinates[:bearing] = "east"
            when "east"
                coordinates[:bearing] = "north"
            else 
                coordinates[:bearing] = "south" 
            end
        when 'A'
            case coordinates[:bearing]
            when "north"
                coordinates[:y] += 1
            when "south"
                coordinates[:y] -= 1
            when "east"
                coordinates[:x] += 1
            else 
                coordinates[:x] -= 1 
            end
        end
    end

    return coordinates
end

# class RobotSimulator   
#     # attr_accessor :bearing, :coordinates, :x, :y, :instr
#     def initialize(x = 7, y = 3, bearing = "north")
#         @bearing = bearing
#         @x = x
#         @y = y
#     end

#     def current_position
#         return { :x => @x, :y => @y, :bearing => @bearing}
#     end

#     def advance
#         case @bearing
#         when "north"
#             @y += 1
#         when "south"
#             @y -= 1
#         when "east"
#             @x += 1  
#         when "west"
#             @x -= 1        
#         else 
#             return 
#         end
#     end

#     def left_trun
#         case @bearing
#         when "north"
#             @bearing = "west"
#         when "south"
#             @bearing = "east"
#         when "east"
#             @bearing = "north"
#         when "west"
#             @bearing = "south"
#         else 
#             return 
#         end
#     end

#     def rigth_trun
#         case @bearing
#         when "north"
#             @bearing = "east"
#         when "south"
#             @bearing = "west"
#         when "east"
#             @bearing = "south"
#         when "west"
#             @bearing = "north"
#         else 
#             return
#         end
#     end

#     def travel(instructions)
#         ins = instructions.upcase.split("")
#         !ins.empty? && ins.each do |i|
#             case i 
#             when "A"
#                 advance
#             when "R"
#                 rigth_trun
#             when "L" 
#                 left_trun
#             else 
#                 return
#             end
#         end
#     end
# end

 

# Sample Instructions
sample  = "raalal"

# An initialization of the Robot Class
# Bot = RobotSimulator.new

# A call to its travel method with instructons
# Bot.travel(sample)

# To get current coordinates and bearing
# res =  Bot.current_position

# A call to the function
res = my_robot_simulator sample
# Display of the results
puts res