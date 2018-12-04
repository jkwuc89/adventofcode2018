require "adventofcode2018/version"
require "ostruct"
require "set"

module AdventOfCode2018
  def self.day1_puzzle1(starting_frequency: 0, adjustments:)
    frequency = starting_frequency
    adjustments.each do |adjustment|
      adj = _day1_deconstruct_adjustment(adjustment)
      frequency += (adj.operator == "+" ? adj.operand : -adj.operand)
    end
    frequency
  end

  def self.day1_puzzle2(adjustments)
    current_frequency = 0
    frequencies = Set[current_frequency]
    loop do
      adjustments.each do |adjustment|
        adj = _day1_deconstruct_adjustment(adjustment)
        current_frequency += (adj.operator == "+" ? adj.operand : -adj.operand)
        return current_frequency if frequencies.include?(current_frequency)

        frequencies.add(current_frequency)
      end
    end
  end

  private

  def self._day1_deconstruct_adjustment(adjustment)
    deconstructed = OpenStruct.new
    deconstructed.operator = adjustment[0]
    deconstructed.operand = adjustment[1..-1].to_i
    deconstructed
  end
end
