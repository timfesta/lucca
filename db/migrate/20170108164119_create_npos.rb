class CreateNpos < ActiveRecord::Migration
  def change
    create_table :npos do |t|
      t.string :name
      t.string :about

      t.timestamps null: false
    end
  end
end
