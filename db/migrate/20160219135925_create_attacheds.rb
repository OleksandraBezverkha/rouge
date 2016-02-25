class CreateAttacheds < ActiveRecord::Migration
  def change
    create_table :attacheds do |t|
      t.string :atached
      t.references :description, index: true, foreign_key: true
      t.references :comment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
