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
  end

end
