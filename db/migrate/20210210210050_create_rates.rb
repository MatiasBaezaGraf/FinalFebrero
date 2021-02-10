class CreateRates < ActiveRecord::Migration[6.1]
  def change
    create_table :rates do |t|
      t.integer :price
      t.datetime :from
      t.datetime :to

      t.timestamps
    end
  end
end
