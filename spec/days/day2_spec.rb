require "constants_and_utils"

RSpec.describe Day2 do
  context "https://adventofcode.com/2018/day/2" do
    context "Puzzle 1: Checksum" do
      context "Examples" do
        it { expect(described_class.puzzle1(:box_ids => Utils.get_example_input(:day_number => 2))).to eq(12) }
      end
      context "Puzzle input" do
        it { expect(described_class.puzzle1(:box_ids => Utils.get_puzzle_input(:day_number => 2))).to eq(5704) }
      end
    end

    context "Puzzle 2:" do
      context "Examples" do
      end

      context "Puzzle input" do
      end
    end
  end
end
