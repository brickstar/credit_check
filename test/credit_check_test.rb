require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check.rb'
require 'pry'

class CreditCheckTest < Minitest::Test

  def test_it_exists
    cc = CreditCheck.new("5541808923795240")

    assert_instance_of CreditCheck, cc
  end

  def test_digits
    cc = CreditCheck.new("5541808923795240")

    assert_equal [0, 4, 2, 5, 9, 7, 3, 2, 9, 8, 0, 8, 1, 4, 5, 5], cc.digits
  end

  # def test_check_digit
  #   cc = CreditCheck.new("5541808923795240")
  #
  #   assert_equal 0, cc.check_digit
  # end

  def test_two_times_every_other_digit
    cc = CreditCheck.new("5541808923795240")

    assert_equal [0, 8, 2, 10, 9, 14, 3, 4, 9, 16, 0, 16, 1, 8, 5, 10], cc.two_times_every_other_digit
  end

  def test_sum_digits_over_ten
    cc = CreditCheck.new("5541808923795240")

    assert_equal [0, 4, 2, 5, 9, 7, 3, 2, 9, 8, 0, 8, 1, 4, 5, 5], cc.sum_digits_over_ten
  end

  def test_summed_results
    skip
    cc = CreditCheck.new("5541808923795240")

    assert_equal 70, cc.results_summed
  end

  def test_validate
    cc = CreditCheck.new("5541808923795240")
# binding.pry
    assert_equal "The number is valid!", cc.validate
  end
end
