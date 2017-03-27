class AddPictureToMicroposts < ActiveRecord::Migration[5.0]
  def self.up
    add_column :microposts, :picture, :string
  end
  
  def self.down
    remove_column :microposts, :picture
  end
end
