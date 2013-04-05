class AddAlbumIdToRecordings < ActiveRecord::Migration
  def change
    add_column :recordings, :album_id, :integer
  end
end
