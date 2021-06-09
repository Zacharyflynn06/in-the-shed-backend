class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :author
      t.integer :tempo
      
      t.references :user, null: false, foreign_key: {on_cascade: :delete}

      t.timestamps

    end
  end
end
