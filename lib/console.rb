require 'pry'
require_relative './artist.rb'
require_relative './song.rb'
require_relative './genre.rb'
require_relative './doctor.rb'
require_relative './appointment.rb'
require_relative './patient.rb'

ingber = Doctor.new('Dr. Ingber')
perelstein = Doctor.new('Dr. Perelstein')

me = Patient.new('Steven Weiss')
zoe = Patien.new('Zoe Fortin')


shawn_carter = Artist.new('Jay-Z')
kanye_west = Artist.new('Kanye')
hip_hop = Genre.new('Hip-Hop')
pop = Genre.new('Pop')
otis = Song.new('Otis', shawn_carter, hip_hop)
dudes_in_paris = Song.new('N In Paris', kanye_west, hip_hop)

binding.pry
puts "GOODBYE"
