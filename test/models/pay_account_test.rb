require 'test_helper'

class PayAccountTest < ActiveSupport::TestCase

  test 'find by account number' do
    account = pay_accounts(:one)
    assert_equal '1234567890', account.account_number
    assert_equal 'Test Account 1', account.nickname
  end

  test 'find other account number' do
    assert_equal '1234567891', pay_accounts(:two).account_number
    assert_equal 'Test Account 2', pay_accounts(:two).nickname
  end

  test 'Finds all Pay Accounts' do
    assert_equal 2, PayAccount.count
  end

  context :validations do
    should validate_presence_of(:nickname)
    should validate_presence_of(:account_number)
    should validate_presence_of(:account_type)
  end

end
