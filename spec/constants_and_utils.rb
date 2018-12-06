TEST_RESOURCE_DIR = "#{Dir.pwd}/spec/resources".freeze

module Utils
  def self.get_input_file(day_number:, puzzle_number:, use_example: false)
    "#{TEST_RESOURCE_DIR}/day#{day_number}puzzle#{puzzle_number}#{use_example ? "example" : "input"}.txt"
  end

  def self.get_input(day_number:, puzzle_number:, use_example: false)
    input = []
    File.open(get_input_file(:day_number => day_number, :puzzle_number => puzzle_number, :use_example => use_example)).each { |line| input.push line.rstrip }
    input
  end
end
