class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.string :title
    	t.string :subtitle
    	t.string :image_name
    	t.string :sku
    	t.string :download_url
    	t.text :description
    	t.decimal :price

      t.timestamps null: false
    end
  end
end
