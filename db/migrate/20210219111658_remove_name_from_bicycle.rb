class RemoveNameFromBicycle < ActiveRecord::Migration[6.0]
  def change
    remove_column :bicycles, :name, :string
  end
end
