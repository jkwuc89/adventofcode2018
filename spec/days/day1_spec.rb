require "constants_and_utils"

RSpec.describe Day1 do
  context "https://adventofcode.com/2018/day/1" do
    context "Puzzle 1: Adjust frequency" do
      context "Examples" do
        it { expect(described_class.puzzle1(:adjustments => %w[+1 +1 +1])).to eq(3) }
        it { expect(described_class.puzzle1(:adjustments => %w[+1 +1 -2])).to eq(0) }
        it { expect(described_class.puzzle1(:adjustments => %w[-1 -2 -3])).to eq(-6) }
      end
      context "Puzzle input" do
        it { expect(described_class.puzzle1(:adjustments => Utils.get_input(:day_number => 1, :puzzle_number => 1))).to eq(525) }
      end
    end

    context "Puzzle 2: Find duplicate frequency" do
      context "Examples" do
        it { expect(described_class.puzzle2(%w[+1 -1])).to eq(0) }
        it { expect(described_class.puzzle2(%w[+3 +3 +4 -2 -4])).to eq(10) }
        it { expect(described_class.puzzle2(%w[-6 +3 +8 +5 -6])).to eq(5) }
        it { expect(described_class.puzzle2(%w[+7 +7 -2 -7 -4])).to eq(14) }
      end

      context "Puzzle input" do
        it { expect(described_class.puzzle2(Utils.get_input(:day_number => 1, :puzzle_number => 1))).to eq(75749) }
      end
    end
  end
end
