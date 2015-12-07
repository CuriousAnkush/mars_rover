module MarsRoverProcessor
  def process_input(commands = [])
    commands.each do |command_name|
      case command_name
      when 'L', 'R'
        self.rotate(command_name)
      when 'M'
        self.move()
      else
      end
    end
  end
end