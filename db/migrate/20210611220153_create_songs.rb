class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :duration
      t.belongs_to :artist
      t.belongs_to :genre

      t.timestamps
    end
  end
end
