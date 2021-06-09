class CreateMeasures < ActiveRecord::Migration[6.1]
  def change
    create_table :measures do |t|

      t.references :song, null: false, foreign_key: {on_cascade: :delete}

      t.timestamps
    end
  end
end