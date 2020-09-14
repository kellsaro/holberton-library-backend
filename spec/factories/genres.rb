# == Schema Information
#
# Table name: genres
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#
# Indexes
#
#  index_genres_on_category_id           (category_id)
#  index_genres_on_category_id_and_name  (category_id,name) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#
