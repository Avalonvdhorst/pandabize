class AddBicycleModelReferenceToDisabledOptions < ActiveRecord::Migration[6.0]
  def change
    add_reference :disabled_options, :bicycle_model, foreign_key: true
  end
end
