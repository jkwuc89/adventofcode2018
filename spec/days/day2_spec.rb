require "constants_and_utils"

RSpec.describe Day2 do
  context "https://adventofcode.com/2018/day/2" do
    context "Part 1: Checksum" do
      context "Examples" do
        it { expect(described_class.part1(:box_ids => Utils.get_input(:day_number => 2, :part_number => 1, :use_example => true))).to eq(12) }
      end
      context "Input" do
        it { expect(described_class.part1(:box_ids => Utils.get_input(:day_number => 2, :part_number => 1))).to eq(5704) }
      end
    end

    context "Part 2: Find correct box IDs" do
      context "Examples" do
        it { expect(described_class.part2(:box_ids => Utils.get_input(:day_number => 2, :part_number => 2, :use_example => true))).to eq("fgij") }
      end

      context "Input" do
        it { expect(described_class.part2(:box_ids => Utils.get_input(:day_number => 2, :part_number => 1))).to eq("umdryabviapkozistwcnihjqx") }
      end
    end
  end
end
