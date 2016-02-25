class CreateSkypes < ActiveRecord::Migration
  def change
    create_table :skypes do |t|
      t.string :skype
      t.references :frauds, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
