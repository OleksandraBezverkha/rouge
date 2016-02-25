class AddDescriptionToFrauds < ActiveRecord::Migration
  def change
    add_column :frauds, :description, :text
  end
end
