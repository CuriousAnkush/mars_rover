class Platue
  attr_accessor :cardinal_points

  def initialize(locations = {x_begin_location:0, y_begin_location:0, x_ending_location:5, y_ending_location:5})
    @cardinal_points = locations
  end

end