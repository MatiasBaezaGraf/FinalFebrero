class AddVehicleIdToRate < ActiveRecord::Migration[6.1]
  def change
    add_reference :rates, :vehicle, null: false, foreign_key: true
  end
end
