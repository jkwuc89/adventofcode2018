require "adventofcode2018/version"

module AdventOfCode2018
  def self.day1_puzzle1(adjustments)
    frequency = 0
    adjustments.each do |adjustment|
      operator = adjustment[0]
      operand = adjustment[1..-1].to_i
      frequency += (operator == "+" ? operand : -operand)
    end
    frequency
  end
end
