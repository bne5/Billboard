class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :genre
      t.string :play_count
      t.belongs_to :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
