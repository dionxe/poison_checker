# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

mushroomsFile = Rails.root.join('db', 'data', 'agaricus-lepiota.data');
mushroomsData = CSV.read(mushroomsFile);

mushroomsData.each do |m|
  Mushroom.create(
    poisonous: m[0] === 'p',
    cap_shape: m[1],
    cap_surface: m[2],
    cap_color: m[3],
    bruises: m[4],
    odor: m[5],
    gill_attachment: m[6],
    gill_spacing: m[7],
    gill_size: m[8],
    gill_color: m[9],
    stalk_shape: m[10],
    stalk_root: m[11],
    stalk_surface_above_ring: m[12],
    stalk_surface_below_ring: m[13],
    stalk_color_above_ring: m[14],
    stalk_color_below_ring: m[15],
    veil_type: m[16],
    veil_color: m[17],
    ring_number: m[18],
    ring_type: m[19],
    spore_print_color: m[20],
    population: m[21],
    habitat: m[22]
  )
end
