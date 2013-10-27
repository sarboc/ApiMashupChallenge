class CreateApisMashups < ActiveRecord::Migration
  def change
    create_table :apis_mashups do |t|
      t.references :api
      t.references :mashup
      t.timestamps
    end
  end
end
