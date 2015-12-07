require "mars_rover/version"
require "mars_rover/mars_robot"
require "mars_rover/platue"
require 'directions'
require 'formatters/output_formatter'
platue_cordinates = gets.chomp.split(' ')
rover1_initial_cordinates = gets.chomp.split(' ')
rover1_movements = gets.chomp.split('')
platue = Platue.new
mars_robot = MarsRobot.new('Sputnik', {x_cordinal: rover1_initial_cordinates[0].to_i, y_cordinal: rover1_initial_cordinates[1].to_i, direction: rover1_initial_cordinates[2]})
mars_robot.process_input(rover1_movements)
puts OutputFormatter.format(mars_robot.name, mars_robot.x_cordinal, mars_robot.y_cordinal, mars_robot.direction)

