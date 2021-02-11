class CreateBicycleModels < ActiveRecord::Migration[6.0]
  def change
    create_table :bicycle_models do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
