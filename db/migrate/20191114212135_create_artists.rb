class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :first_name
      t.string :last_name
      t.string :group
      t.string :genre
      t.integer :age

      t.timestamps
    end
  end
end
