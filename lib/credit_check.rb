class CreditCheck
  attr_reader :card_number

  def initialize(card_number)
    @card_number = card_number
  end

  def digits
    @card_number.to_i.digits
  end

  def two_times_every_other_digit(array)
    array.map.with_index do |num, index|
      if index % 2 == 1
        num * 2
      else
        num
      end
    end
  end

  def sum_digits_over_ten(array)
    array.map do |num, index|
      if num > 9
        num - 9
      else
        num
      end
    end
  end

  def results_summed(array)
    array.sum
  end

  def validate
    digits_array = digits
    two_times_array = two_times_every_other_digit(digits_array)
    sum_digits_array = sum_digits_over_ten(two_times_array)
    result = results_summed(sum_digits_array)
    if result % 10 == 0
      "The number #{@card_number[0..3]}-#{@card_number[4..7]}-#{@card_number[8..11]}-#{@card_number[12..15]} is valid!"
    else
      "The number #{@card_number[0..3]}-#{@card_number[4..7]}-#{@card_number[8..11]}-#{@card_number[12..15]} is invalid!"
    end
  end

end
