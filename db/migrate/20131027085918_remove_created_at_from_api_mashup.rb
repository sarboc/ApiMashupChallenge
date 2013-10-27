class RemoveCreatedAtFromApiMashup < ActiveRecord::Migration
  def up
    remove_column :apis_mashups, :created_at
    remove_column :apis_mashups, :updated_at
  end

  def down
    remove_column :apis_mashups, :created_at
    remove_column :apis_mashups, :updated_at
  end
end
