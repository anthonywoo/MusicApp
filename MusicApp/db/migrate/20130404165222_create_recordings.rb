class CreateRecordings < ActiveRecord::Migration
  def change
    create_table :recordings do |t|
      t.references :song
      t.references :band

      t.timestamps
    end
    add_index :recordings, :song_id
    add_index :recordings, :band_id
  end
end
