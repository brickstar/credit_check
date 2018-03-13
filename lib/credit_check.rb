class CreditCheck

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
      if num > 10
        (num - 10) + 1
      else
        num
      end
    end
  end

  def sum_results
    
  end

end
