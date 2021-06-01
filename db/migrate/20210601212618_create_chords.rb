class CreateChords < ActiveRecord::Migration[6.1]
  def change
    create_table :chords do |t|
      t.string :quality

      t.timestamps
    end
  end
end
