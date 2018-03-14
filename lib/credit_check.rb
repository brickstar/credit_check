class CreditCheck
  attr_reader :digits,
              :check_digit

  def initialize(card_number)
    @digits = card_number.to_i.digits
  end

  def two_times_every_other_digit
    @digits.map!.with_index do |num, index|
      if index % 2 == 1
        num * 2
      else
        num
      end
    end
  end

  def sum_digits_over_ten
    @digits.map!.with_index do |num, index|
      if num > 9
        num - 9
      else
        num
      end
    end
  end

  def results_summed
    @digits = @digits.sum
  end

  def validate
    two_times_every_other_digit
    sum_digits_over_ten
    results_summed
    if @digits % 10 == 0
      "The number is valid!"
    else
      "The number is invalid!"
    end
    # Account identifier:    7   9   9   2   7   3   9   8   7   1   3
    # 2x every other digit:  7   18  9   4   7   6   9   16  7   2   3
    # Summed digits over 10: 7   9   9   4   7   6   9   7   7   2   3
    # Results summed:        7   9   9   4   7   6   9   7   7   2   3 = 70
    # valid if sum is evenly divisible by 10
  end

end
