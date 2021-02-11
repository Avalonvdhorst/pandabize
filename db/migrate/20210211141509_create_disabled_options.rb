class CreateDisabledOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :disabled_options do |t|
      t.references :option_one, null: false, foreign_key: {to_table: :options}
      t.references :option_two, null: false, foreign_key: {to_table: :options}
      t.timestamps
    end
  end
end
