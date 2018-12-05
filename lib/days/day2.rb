require "adventofcode2018/version"

module Day2
  def self.puzzle1(box_ids:)
    has_exactly_two_of_any_char_count = 0
    has_exactly_three_of_any_char_count = 0

    box_ids.each do |box_id|
      letter_counts = Hash.new
      box_id.split("").each do |box_id_char|
        letter_counts.key?(box_id_char) ? letter_counts[box_id_char] += 1 : letter_counts[box_id_char] = 1
      end

      has_exactly_two_of_any_char_count += 1 if letter_counts.value?(2)
      has_exactly_three_of_any_char_count += 1 if letter_counts.value?(3)
    end

    checksum = has_exactly_two_of_any_char_count * has_exactly_three_of_any_char_count
    checksum
  end

  def self.puzzle2()
  end

  private

end
