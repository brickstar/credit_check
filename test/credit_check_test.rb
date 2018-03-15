require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check.rb'
require 'pry'

class CreditCheckTest < Minitest::Test

  def test_it_exists
    cc = CreditCheck.new("5541808923795240")

    assert_instance_of CreditCheck, cc
  end

  def test_it_has_card_number
    cc = CreditCheck.new("5541808923795240")

    assert_equal "5541808923795240", cc.card_number
  end

  def test_digits
    cc = CreditCheck.new("5541808923795240")

    expected = [0, 4, 2, 5, 9, 7, 3, 2, 9, 8, 0, 8, 1, 4, 5, 5]
    actual = cc.digits

    assert_equal expected, actual
  end


  def test_two_times_every_other_digit
    cc = CreditCheck.new("5541808923795240")

    expected = [0, 8, 2, 10, 9, 14, 3, 4, 9, 16, 0, 16, 1, 8, 5, 10]
    actual = cc.two_times_every_other_digit([0, 4, 2, 5, 9, 7, 3, 2, 9, 8, 0, 8, 1, 4, 5, 5])

    assert_equal expected , actual
  end

  def test_sum_digits_over_ten
    cc = CreditCheck.new("5541808923795240")

    assert_equal [0, 8, 2, 1, 9, 5, 3, 4, 9, 7, 0, 7, 1, 8, 5, 1], cc.sum_digits_over_ten([0, 8, 2, 10, 9, 14, 3, 4, 9, 16, 0, 16, 1, 8, 5, 10])
  end

  def test_summed_results
    cc = CreditCheck.new("5541808923795240")


    assert_equal 70, cc.results_summed([0, 8, 2, 1, 9, 5, 3, 4, 9, 7, 0, 7, 1, 8, 5, 1])
  end

  def test_valid_numbers
    cc = CreditCheck.new("5541808923795240")

    assert_equal "The number 5541-8089-2379-5240 is valid!", cc.validate
  end

  def test_returns_invalid
    cc = CreditCheck.new("5541801923795240")

    expected = "The number 5541-8019-2379-5240 is invalid!"

    assert_equal "The number 5541-8019-2379-5240 is invalid!", cc.validate
  end

  def test_validate_amex
    cc = CreditCheck.new('342804633855673')

    assert_equal "The number 3428-0463-3855-673 is valid!", cc.validate

    cc = CreditCheck.new('342801633855673')

    assert_equal "The number 3428-0163-3855-673 is invalid!", cc.validate
  end
end
