class CreateApis < ActiveRecord::Migration
  def change
    create_table :apis do |t|
    	t.string :name
    	t.string :url
    	t.text :description
    	t.string :requires_key
      t.timestamps
    end
  end
end
