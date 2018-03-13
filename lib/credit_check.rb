class CreditCheck

  def initialize(card_number)
    @card_number = card_number
  end

  def two_times(array)
    array.map.with_index do |num, index|
      if index % 2 == 1
        num * 2
      else
        num
      end
    end
  end

  def sum_greater_than_ten(array)
    array.map.with_index do |num, index|
      if num > 9
        num - 9
      else
        num
      end
    end.sum
  end

end
