class AddBandArtistsTable < ActiveRecord::Migration
  def change
    create_table :band_artists do |t|
      t.references :band
      t.references :artist

      t.timestamps
    end
    add_index :band_artists, :band_id
    add_index :band_artists, :artist_id

  end

end
