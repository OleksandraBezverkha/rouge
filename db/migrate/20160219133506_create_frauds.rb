class CreateFrauds < ActiveRecord::Migration
  def change
    create_table :frauds do |t|
      t.string :firstname
      t.string :lastname
      t.string :patronymic
      t.string :icq
      t.string :type
      t.string :status
      t.string :name

      t.timestamps null: false
    end
  end
end
