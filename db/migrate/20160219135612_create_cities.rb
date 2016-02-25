class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :city
      t.references :frauds, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
