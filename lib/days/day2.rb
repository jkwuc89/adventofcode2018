require "adventofcode2018/version"

module Day2
  def self.part1(box_ids:)
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

  def self.part2(box_ids:)
    correct_box_ids = Array.new
    box_ids.each_with_index do |box_id1, index|
      box_ids[index..-1].each do |box_id2|
        if _are_box_ids_different_by_one_char(:box_id1 => box_id1, :box_id2 => box_id2)
          correct_box_ids.push(box_id1)
          correct_box_ids.push(box_id2)
        end
      end
    end
    raise "More than 2 correct box IDs found" unless correct_box_ids.length == 2

    _get_common_chars(:correct_box_id1 => correct_box_ids[0], :correct_box_id2 => correct_box_ids[1])
  end

  private

  def self._are_box_ids_different_by_one_char(box_id1:, box_id2:)
    diff_count = 0
    box_id1.each_char.with_index do |box_id1_char, index|
      diff_count += 1 if box_id1_char != box_id2[index]
      return false if diff_count > 1
    end
    diff_count == 1
  end

  def self._get_common_chars(correct_box_id1:, correct_box_id2:)
    common_chars = ""
    correct_box_id1.each_char.with_index do |correct_box_id1_char, index|
      common_chars += correct_box_id1_char if correct_box_id1_char == correct_box_id2[index]
    end
    common_chars
  end
end
