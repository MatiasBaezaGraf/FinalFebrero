class AddRollIdToPayment < ActiveRecord::Migration[6.1]
  def change
    add_reference :payments, :roll, null: false, foreign_key: true
  end
end
