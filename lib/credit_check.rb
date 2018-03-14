class CreditCheck

  def initialize(account_identifier)
    @account_identifier = account_identifier
    @results = 0
  end

  def convert_string
    string.split('').map do |num|
      num.to_i
    end.chars
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

  def sum_greater_than_ten(array)
    results = array.map.with_index do |num, index|
      if num > 9
        num - 9
      else
        num
      end
    end
    @results = results.sum
  end

  def valid?
    if @results % 10 == 0
      puts "Card number #{@card_number} is valid!"
    else
      puts "Card number #{@card_number} is invalid!"
    end
  end

  def check_number(number)

  end


  def check_number

  end

end



class CreditCheck

  def initialize(card_number)
    @digits = card_number.to_i.digits
    @check_sum = @digits.pop
  end

  def validate
    "The number is valid!"
    # Account identifier:    7   9   9   2   7   3   9   8   7   1   3
    # 2x every other digit:  7   18  9   4   7   6   9   16  7   2   3
    # Summed digits over 10: 7   9   9   4   7   6   9   7   7   2   3
    # Results summed:        7   9   9   4   7   6   9   7   7   2   3 = 70
    # valid if sum is evenly divisible by 10
  end



end
