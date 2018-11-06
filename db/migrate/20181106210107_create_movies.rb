class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :genre
      t.date :release_year
      t.string :director
      t.string :language

      t.timestamps
    end
  end
end
