class CreateMeasures < ActiveRecord::Migration[6.1]
  def change
    create_table :measures do |t|
      t.references :song, null: false, foreign_key: true
      t.references :chord, null: false, foreign_key: true
      t.integer :time_signiture

      t.timestamps
    end
  end
end
