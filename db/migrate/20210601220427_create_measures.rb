class CreateMeasures < ActiveRecord::Migration[6.1]
  def change
    create_table :measures do |t|
      t.integer :time_signiture

      t.timestamps
    end
  end
end