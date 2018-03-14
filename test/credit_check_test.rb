require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check.rb'
require 'pry'

class CreditCheckTest < Minitest::Test

  def test_it_exists
    cc = CreditCheck.new("5541808923795240")
binding.pry
    assert_instance_of CreditCheck, cc
  end

  def test_digits
    cc = CreditCheck.new("5541808923795240")

    assert_equal [5, 5, 4, 1, 8, 0, 8, 9, 2, 3, 7, 9, 5, 2, 4], cc.digits
  end

  def test_check_digit
    cc = CreditCheck.new("5541808923795240")

    assert_equal 0, cc.check_digit
  end

  def test_two_times_every_other_digit
    cc = CreditCheck.new("5541808923795240")

    assert_equal [5, 10, 4, 2, 8, 0, 8, 18, 2, 6, 7, 18, 5, 4, 4], cc.two_times_every_other_digit
  end

  def test_sum_digits_over_ten
    cc = CreditCheck.new("5541808923795240")

    assert_equal 72, cc.sum_digits_over_ten
  end

  def test_validate

  end
end
