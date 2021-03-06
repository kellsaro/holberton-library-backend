# == Schema Information
#
# Table name: books
#
#  id             :bigint           not null, primary key
#  edition        :integer          default(1), not null
#  isbn           :string           not null
#  pages          :integer          default(1), not null
#  price_cents    :integer          default(0), not null
#  price_currency :string           default("USD"), not null
#  published_at   :date             not null
#  title          :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  author_id      :bigint           not null
#  category_id    :bigint           not null
#
# Indexes
#
#  index_books_on_author_id    (author_id)
#  index_books_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (author_id => authors.id)
#  fk_rails_...  (category_id => categories.id)
#
FactoryBot.define do
  factory :book do

  end
end
