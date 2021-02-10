class AddCabinIdToPayment < ActiveRecord::Migration[6.1]
  def change
    add_reference :payments, :cabin, null: false, foreign_key: true
  end
end
