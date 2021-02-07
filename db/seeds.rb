# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'

  Audiobook.destroy_all
  User.destroy_all

puts 'Creating users...'

  user_admin = User.create(username: "adminvikle",email: "adminvikle@fairytales.yes", password: "fairytales")
  thorgrue = User.create(username: "thorgrue", email: "thor@grue.fr", password: "iatfiawd")

puts 'Creating tales...'

  puts '> Le conte chaud et doux des chaudoudoux'
  chaudoudoux = Audiobook.create(title: "Le conte chaud et doux des chaudoudoux", author: "Claude Steiner", duration: 420, description: "Un super conte qui fera rêver les enfants et les parents, rappelant l'importance de la gratuité et de l'amour")
