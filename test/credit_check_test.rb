require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check.rb'
require 'pry'

class CreditCheckTest < Minitest::Test

  def test_returns_valid
    valid = ['5541801923795240', '4024007136512380', '6011797668867828']
    expected = "The number is valid!"

    valid.each { |card_number| assert_equal expected, CreditCheck.new(card_number).validate }
  end

  def test_returns_invalid
    invalid = ['5541801923795240', '4024007106512380', '6011797668868728']
    expected = "The number is invalid!"

    invalid.each { |card_number| assert_equal expected, CreditCheck.new(card_number).validate }
  end

#private methods
  def test_converts_string_to_digits

    asset_equal [0, 4, 2, 5, 9, 7, 3, 2, 9, 1, 0, 8, 1, 4, 5, 5],
  end
end
