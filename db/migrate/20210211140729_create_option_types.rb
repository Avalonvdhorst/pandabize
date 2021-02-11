class CreateOptionTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :option_types do |t|
      t.string :name
      t.references :bicycle_model, null: false, foreign_key: true

      t.timestamps
    end
  end
end
