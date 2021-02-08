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

  puts '> Le conte chaud et doux des chaudoudous'
  chaudoudous = Audiobook.create(title: "Le conte chaud et doux des chaudoudous", author: "Claude Steiner", duration: 420, description: "Un super conte qui fera rêver les enfants et les parents, rappelant l'importance de la gratuité et de l'amour")
    pic = File.open("app/assets/images/chaudetdoux.jpg")
      chaudoudous.photo.attach(io: pic, filename: 'chaudetdoux.jpg', content_type: 'image/jpg')
    record = File.open("app/assets/images/chaudoudous.mp4")
      chaudoudous.audio.attach(io: record, filename: 'chaudoudous.mp4', content_type: 'video/mp4')
  chaudoudous.save!

  puts '> Le loup et l\'agneau'
  loupagneau = Audiobook.create(title: "Le loup et l'agneau", author: "Jean de la Fontaine", duration: 300, description: "Un jour, un tendre agneau buvait dans une rivière. Un loup qui n'avait pas mangé depuis longtemps arrive et se met en colère contre l'agneau. Le loup cherche des reproches à faire à l'agneau mais l'agneau a toujours réponse à ses reproches. Finalement, le loup mange quand même l'agneau innocent.")
    pic = File.open("app/assets/images/loupagneau.jpg")
      loupagneau.photo.attach(io: pic, filename: 'loupagneau.jpg', content_type: 'image/jpg')
    record = File.open("app/assets/images/chaudoudous.mp4")
      loupagneau.audio.attach(io: record, filename: 'chaudoudous.mp4', content_type: 'video/mp4')
  loupagneau.save!

  puts '> Dînette dans le tractopelle'
  tractodinette = Audiobook.create(title: "Dînette dans le tractopelle", author: "Mélanie Grandgirard", duration: 500, description: "Dans le catalogue, les pages roses des jouets de filles sont bien séparées des pages bleues des jouets de garçons. Jusqu'au jour où le catalogue est déchiré et recollé dans le désordre. La poupée Annabelle qui rêvait de jouer au tractopelle rencontre la figurine Grand Jim qui adore la dînette. Garçons et filles partagent enfin leurs jouets et leurs jeux dans un catalogue aux pages violettes.")
    pic = File.open("app/assets/images/tractodinette.jpg")
      tractodinette.photo.attach(io: pic, filename: 'tractodinette.jpg', content_type: 'image/jpg')
    record = File.open("app/assets/images/chaudoudous.mp4")
      tractodinette.audio.attach(io: record, filename: 'chaudoudous.mp4', content_type: 'video/mp4')
  tractodinette.save!
