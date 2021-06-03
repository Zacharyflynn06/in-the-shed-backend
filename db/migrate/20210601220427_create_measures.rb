class CreateMeasures < ActiveRecord::Migration[6.1]
  def change
    create_table :measures do |t|
      t.integer :time_signiture
      t.references :time_signiture, null: false, foreign_key: true

      t.references :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end