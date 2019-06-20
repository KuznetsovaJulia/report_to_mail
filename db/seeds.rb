# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
guest_list=[
    { code: 'A-001', email: 'guest@email.com', entity: 'reservation', status: 'confirmed', created_at: '2019-06-08 23:06:45', updated_at: '2019-06-08 23:06:45' },
    { code: 'A-001', email: 'guest@email.com', entity: 'reservation', status: 'modified', created_at: '2019-06-08 23:06:45', updated_at: '2019-06-08 23:40:02' }
]
guest_list.each do |g|
  Guest.create(g)
end