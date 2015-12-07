require "mars_rover/version"
require "directions"
require "processors/mars_rover_processor"

class MarsRobot
  include MarsRoverProcessor
  attr_accessor :x_cordinal, :y_cordinal, :direction, :settings, :name
  Default_Position = {x_cordinal: 0, y_cordinal: 0, direction: Directions::NORTH}
  Default_Settings = {steps: 1, angle_of_rotation: 90}

  def initialize(name, position = Default_Position, settings = Default_Settings)
    self.name = name
    self.x_cordinal = position[:x_cordinal]
    self.y_cordinal = position[:y_cordinal]
    self.direction = position[:direction]
    self.settings = settings
  end



  def position
    [x_cordinal, y_cordinal, direction]
  end

  def move
    case direction
    when Directions::NORTH
      @y_cordinal = @y_cordinal + settings[:steps]
    when Directions::EAST
      @x_cordinal = @x_cordinal + settings[:steps]
    when Directions::SOUTH
      @y_cordinal = @y_cordinal - settings[:steps]
    when Directions::WEST
      @x_cordinal = @x_cordinal - settings[:steps]
    else
    end
  end

  def rotate(direction_of_rotation)
    case direction_of_rotation
    when  Directions::ANTI_CLOCKWISE
      @direction = Directions::ANTI_CLOCKWISE_DIRECTION_CONVERSION[@direction]
    when Directions::CLOCKWISE
      @direction = Directions::CLOCKWISE_DIRECTION_CONVERSION[@direction]
    else
    end
  end

end
