class CreateBookItems < ActiveRecord::Migration[6.0]
  def change
    create_table :book_items do |t|
      t.belongs_to :book, null: false, foreign_key: true
      t.belongs_to :library, null: false, foreign_key: true
      t.datetime :borrowed_at
      t.date :should_be_back_at
      t.datetime :returned_at

      t.timestamps
    end
  end
end
