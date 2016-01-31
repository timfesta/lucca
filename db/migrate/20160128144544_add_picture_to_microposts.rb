class AddPictureToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :pictures, :string
  end
end
