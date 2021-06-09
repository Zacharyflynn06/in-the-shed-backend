class CreateChordMeasures < ActiveRecord::Migration[6.1]
  def change
    create_table :chord_measures do |t|

      t.references :chord, null: false, foreign_key: {on_cascade: :delete}
      t.references :measure, null: false, foreign_key: {on_cascade: :delete}

      t.timestamps
    end
  end
end
