class Account < ApplicationRecord

  validates :loan_number, :borrower_name, presence: true
end
