class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :loan_number, index: true
      t.string :borrower_name

      t.timestamps
    end
  end
end
