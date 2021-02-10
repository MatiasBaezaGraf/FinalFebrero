class AddCategoryToVehicle < ActiveRecord::Migration[6.1]
  def change
    add_column :vehicles, :category, :string
  end
end
