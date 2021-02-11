class CreateBicycleOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :bicycle_options do |t|
      t.references :bicycle, null: false, foreign_key: true
      t.references :option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
