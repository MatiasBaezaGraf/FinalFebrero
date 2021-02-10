class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.integer :real_ammount
      t.datetime :date

      t.timestamps
    end
  end
end
