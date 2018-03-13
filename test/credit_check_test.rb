require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check.rb'
require 'pry'

class CreditCheckTest < Minitest::Test

  def test_it_exists
    cc = CreditCheck.new

    assert_instance_of CreditCheck, cc
  end

  def test_two_times_every_other_digit
    cc = CreditCheck.new

    assert_equal [7, 18, 9, 4, 7, 6, 9, 16, 7, 2], cc.two_times([7, 9, 9, 2, 7, 3, 9, 8, 7, 1])
  end
end
