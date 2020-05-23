require 'test_helper'

class PayAccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #
  test 'find by account number' do
    assert_equal '1234567890', pay_accounts(:one).name
  end

  test 'find other account number' do
    assert_equal '1234567891', pay_accounts(:two).name
  end

  test 'test' do
    require 'pry'; binding.pry
  end
end
