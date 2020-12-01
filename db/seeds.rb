# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Book.create(Name: 'a', Email: 'a@.com', sport: 1, When: 2020_11_28_220446, Tickets: 1)
Sport.create(title: 'Football', description: 'Play 5-a-side, 7-a-side, a full match or simply book a space to have a kick about	',sport_id: 1, image_url: 'football.png' )
Sport.create(title: 'Rugby', description: 'Association Rugby', sport_id: 2, image_url: 'rugby.png')
Sport.create(title: 'Tennis', description: 'Play singles, doubles or mixed matches in this racket sport',sport_id: 3,image_url: 'tennis.jpg')
Sport.create(title: 'Hockey', description: 'Field hockey' ,sport_id: 4, image_url: 'hockey.png')
Sport.create(title: 'Lacrosse', description: 'Field lacrosse' ,sport_id: 5, image_url: 'lacrosse.jpg')
Sport.create(title: 'Table Tennis', description: 'aka "ping-pong" , hit a ball across a table using small rackets',sport_id: 6, image_url: 'Table_Tennis.png')
Sport.create(title: 'Squash', description: 'Two player ball game in a four-walled court', sport_id: 7, image_url: 'squash.png')
#Sport.create(title:, description:, sport_id:, image_url)
Sport.create(title:'Basketball', description: '2 teams of five players in an indoor court', sport_id:8, image_url: 'basketball.jpg')
Sport.create(title: 'Rowing', description: 'Up to a 4 rowers in a boat', sport_id: 9, image_url: 'rowing.png')
