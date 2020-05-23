class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, index: true, unique: true
      t.string :phone_number

      t.timestamps
    end
  end
end
