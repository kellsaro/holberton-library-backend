class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.belongs_to :author, null: false, index: true, foreign_key: true
      t.belongs_to :category, null: false, index: true, foreign_key: true
      t.string :title, null: false
      t.string :isbn, null: false
      t.monetize :price, null: false, default: 0
      t.integer :edition, null: false, default: 1
      t.integer :pages, null: false, default: 1
      t.date :published_at, null: false

      t.timestamps
    end
  end
end
