class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :issue
      t.string :description
      t.references :npo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
