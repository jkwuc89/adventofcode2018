RSpec.describe AdventOfCode2018 do
  TEST_RESOURCE_DIR = "#{Dir.pwd}/spec/resources".freeze

  context "Day 1: https://adventofcode.com/2018/day/1" do
    context "Puzzle 1: Adjust frequency" do
      context "Examples" do
        it { expect(described_class.day1_puzzle1(%w(+1 +1 +1))).to eq(3) }
        it { expect(described_class.day1_puzzle1(%w(+1, +1, -2))).to eq(0) }
        it { expect(described_class.day1_puzzle1(%w(-1, -2, -3))).to eq(-6) }
      end
      context "Puzzle input" do
        it { expect(described_class.day1_puzzle1(IO.readlines("#{TEST_RESOURCE_DIR}/day1puzzle1input.txt"))).to eq(525) }
      end
    end
  end
end
