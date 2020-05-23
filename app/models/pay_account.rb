class PayAccount < ActiveRecord::Base
  enum account_type: {bank_account:  1, debit_card: 2}

  validates :nickname, :account_number, :account_type, presence: true
end
