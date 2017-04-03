class AddPictureCacheToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :picture_cache, :string
  end
end
