class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :description
      t.string :genre
      t.string :song

      t.timestamps
    end
  end
end
