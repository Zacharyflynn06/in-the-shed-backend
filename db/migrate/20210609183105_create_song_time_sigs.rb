class CreateSongTimeSigs < ActiveRecord::Migration[6.1]
  def change
    create_table :song_time_sigs do |t|
      t.references :song
      t.references :time_signature

      t.timestamps
    end
  end
end
