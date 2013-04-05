# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130404234722) do

  create_table "albums", :force => true do |t|
    t.integer  "band_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "albums", ["band_id"], :name => "index_albums_on_band_id"

  create_table "artists", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "band_artists", :force => true do |t|
    t.integer  "band_id"
    t.integer  "artist_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "band_artists", ["artist_id"], :name => "index_band_artists_on_artist_id"
  add_index "band_artists", ["band_id"], :name => "index_band_artists_on_band_id"

  create_table "bands", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "genre_songs", :force => true do |t|
    t.integer  "genre_id"
    t.integer  "song_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "genre_songs", ["genre_id"], :name => "index_genre_songs_on_genre_id"
  add_index "genre_songs", ["song_id"], :name => "index_genre_songs_on_song_id"

  create_table "genres", :force => true do |t|
    t.string   "genre_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "recordings", :force => true do |t|
    t.integer  "song_id"
    t.integer  "band_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "album_id"
  end

  add_index "recordings", ["band_id"], :name => "index_recordings_on_band_id"
  add_index "recordings", ["song_id"], :name => "index_recordings_on_song_id"

  create_table "songs", :force => true do |t|
    t.string   "name"
    t.integer  "artist_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "songs", ["artist_id"], :name => "index_songs_on_artist_id"

end
