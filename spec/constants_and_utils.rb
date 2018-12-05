TEST_RESOURCE_DIR = "#{Dir.pwd}/spec/resources".freeze

module Utils
  def self.get_example_input_file(day_number:)
    "#{TEST_RESOURCE_DIR}/day#{day_number}exampleinput.txt"
  end

  def self.get_puzzle_input_file(day_number:)
    "#{TEST_RESOURCE_DIR}/day#{day_number}puzzleinput.txt"
  end

  def self.get_example_input(day_number:)
    IO.readlines(get_example_input_file(:day_number => day_number))
  end

  def self.get_puzzle_input(day_number:)
    IO.readlines(get_puzzle_input_file(:day_number => day_number))
  end
end
