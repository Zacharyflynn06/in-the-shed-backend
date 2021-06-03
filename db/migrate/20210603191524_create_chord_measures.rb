class CreateChordMeasures < ActiveRecord::Migration[6.1]
  def change
    create_table :chord_measures do |t|
      t.references :chord, null: false, foreign_key: true
      t.references :measure, null: false, foreign_key: true

      t.timestamps
    end
  end
end
