class RemoveDescriptionFromBicycle < ActiveRecord::Migration[6.0]
  def change
    remove_column :bicycles, :description, :text
  end
end
