# == Schema Information
#
# Table name: book_items
#
#  id                :bigint           not null, primary key
#  borrowed_at       :datetime
#  code              :string           not null
#  returned_at       :datetime
#  should_be_back_at :date
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  book_id           :bigint           not null
#  library_id        :bigint           not null
#
# Indexes
#
#  index_book_items_on_book_id     (book_id)
#  index_book_items_on_code        (code) UNIQUE
#  index_book_items_on_library_id  (library_id)
#
# Foreign Keys
#
#  fk_rails_...  (book_id => books.id)
#  fk_rails_...  (library_id => libraries.id)
#
