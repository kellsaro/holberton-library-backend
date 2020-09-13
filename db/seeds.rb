# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
genres_by_category = {
  Fiction: ['Classic', 'Crime/Detective', 'Epic', 'Fable', 'Fairy tale', 'Fantasy', 'Folktale',
    'Gothic fiction', 'Gothic romanticism', 'Historical fiction', 'Horror', 'Humor', 'Legend',
    'Magical realism', 'Meta fiction/Romantic irony', 'Mystery', 'Mythology', 'Mythopoeia',
    'Realistic fiction', 'Romance', 'Satire', 'Science fiction', 'Short story', 'Spy fiction',
    'Superhero fiction', 'Swashbuckler', 'Tall tale', 'Theological fiction', 'Suspense/Thriller',
    'Tragicomedy', 'Travel', 'Western'],
  Nonfiction: ['Biography', 'Essay', 'Journalism', 'Memoir', 'Narrative nonfiction/Personal narrative',
    'Reference book', 'Self-help book', 'Speech', 'Textbook']
}

genres_by_category.each do |category, genres|
  category = Category.create_or_find_by!(name: category)
  genres.each do |genre|
    category.genres.create(name: genre)
  end
end