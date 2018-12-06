TEST_RESOURCE_DIR = "#{Dir.pwd}/spec/resources".freeze

module Utils
  def self.get_input_file(day_number:, part_number:, use_example: false)
    "#{TEST_RESOURCE_DIR}/day#{day_number}part#{part_number}#{use_example ? "example" : "input"}.txt"
  end

  def self.get_input(day_number:, part_number:, use_example: false)
    input = []
    File.open(get_input_file(:day_number => day_number, :part_number => part_number, :use_example => use_example)).each { |line| input.push line.rstrip }
    input
  end
end
