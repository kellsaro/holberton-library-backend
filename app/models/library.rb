# == Schema Information
#
# Table name: libraries
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Library < ApplicationRecord
  has_many :book_items, inverse_of: :library
  has_many :books, through: :book_items

  validates :name, presence: true
end
