module OutputFormatter
  OUTPUT_FORMAT = <<-FORMAT
<rover_name>
<x_cordinate> <y_cordinate> <direction>
FORMAT

  def self.format(rover_name, x_cordinate, y_cordinate, direction)
    parsed_string = OUTPUT_FORMAT.gsub("<rover_name>", rover_name)
    parsed_string.gsub!("<x_cordinate>", x_cordinate.to_s)
    parsed_string.gsub!("<y_cordinate>", y_cordinate.to_s)
    parsed_string.gsub!("<direction>", direction.to_s)
    parsed_string
  end

end