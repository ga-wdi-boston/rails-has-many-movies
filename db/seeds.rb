# Remove all reviews
# Best practice is to remove the child or belongs_to in the relationship.
Review.delete_all
# Remove all movies
Movie.delete_all

movie = Movie.create!(name: 'Affliction', rating: 'R', desc: 'Little Dark', length: 123)
movie.reviews.create!(name: 'Tom', comment: 'Dark, Somber')
movie.reviews.create!(name: 'Meg', comment: 'Slow, boring')

movie = Movie.create!(name: 'Mad Max', rating: 'R', desc: 'Fun, action', length: 154)
movie.reviews.create!(name: 'Joe', comment: 'Explosions, silly')
movie.reviews.create!(name: 'Chris', comment: 'Brilliant')

movie = Movie.create!(name: 'Rushmore', rating: 'PG-13', desc: 'Quirky humor', length: 105)
movie.reviews.create!(name: 'Tom', comment: 'Crazy, humor')
movie.reviews.create!(name: 'Joanne', comment: 'Waste of time')

puts "Created three Movies"
puts "With reviews"
