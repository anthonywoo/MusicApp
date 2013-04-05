class CreateGenreSongs < ActiveRecord::Migration
  def change
    create_table :genre_songs do |t|
      t.references :genre
      t.references :song

      t.timestamps
    end
    add_index :genre_songs, :genre_id
    add_index :genre_songs, :song_id
  end
end
