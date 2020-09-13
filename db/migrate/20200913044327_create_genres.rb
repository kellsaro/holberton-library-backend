class CreateGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :genres do |t|
      t.belongs_to :category, null: false, index: true, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end

    add_index :genres, [:category_id, :name], unique: true
  end
end
