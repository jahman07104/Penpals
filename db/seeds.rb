# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#  not yet loaded

  # Penpal.create[
  #  {"name": "Janice Green, city:Tacoma Washington, email: janice@aol.com, photo: <img src='https://randomuser.me/api/portraits/women/62.jpg'>"}]

Penpal.destroy_all
User.destroy_all


  user = User.create!(name: "Patrick Harrison")
  user.penpals.create!({name: "JaneElizabeth", city: "Nappa Valley", email: "JE@gmail.com", image_url:"https://randomuser.me/api/portraits/women/79.jpg"})

  penpals_list = [
  {name: "Jannette", city: "New York,New York", email: "jan@AOl.com", image_url: 'https://randomuser.me/api/portraits/med/women/16.jpg'},
  {name: "Sheryl ", city: "Newark", email: "sheryl@Verizon.com", image_url: 'https://randomuser.me/api/portraits/med/women/17.jpg'},
  {name: "Clara", city: "Tacoma,", email: "janice@ATT.com", image_url: 'https://randomuser.me/api/portraits/med/women/18.jpg'},
  {name: "Jane", city: "Los Angeles", email: "jane@Verizon.com", image_url: 'https://randomuser.me/api/portraits/med/women/19.jpg'},
  {name: "Corina ", city: "Worms", email: "Corina@Vodafone.com", image_url: 'https://randomuser.me/api/portraits/med/women/20.jpg'},
  {name: "Stephanie", city: "Miami", email: "Stephanie@.ATTcom", image_url: 'https://randomuser.me/api/portraits/med/women/21.jpg'},
  {name: "Rose", city: "Detroit", email: "Rose@sprint.com", image_url: 'https://randomuser.me/api/portraits/med/women/22.jpg'},
  {name: "Julie", city: "West Palm Beach", email: "Julie@Verizon.com", image_url: 'https://randomuser.me/api/portraits/med/women/23.jpg'}
  ]
penpals_list.each do |penpal_params|
  # 1
  # user.penpals.create({name: "Jan Green", city: "Tacoma,Washington", email: "janice@AOl.com"})
  # 2
  # user.penpals.create({name: "Jani Green", city: "Tacoma,Washington", email: "janice@AOl.com"})

  user.penpals.create!(penpal_params)
end
puts "#{Penpal.count} penpals created"



#   penpals_list = [
# {name: "Jan Green", city: "New York,New York", email: "jan@AOl.com",image_url:"https://randomuser.me/api/portraits/women/59.jpg"},
# {name: "Janice Blue", city: "Newark", email: "janice@AOl.com",image_url:"https://randomuser.me/api/portraits/women/59.jpg"},
# {name: "Janic Green", city: "Tacoma,", email: "janice@AOl.com",image_url:"https://randomuser.me/api/portraits/women/59.jpg"},
# {name: "Jane Fonda", city: "Los Angeles", email: "janice@AOl.com",image_url:"https://randomuser.me/api/portraits/women/59.jpg"},
# {name: "Corina Hurler", city: "Worms", email: "janice@AOl.com",image_url:"https://randomuser.me/api/portraits/women/59.jpg"},
# {name: "Stephanie", city: "Miami", email: "janice@AOl.com",image_url:"https://randomuser.me/api/portraits/women/59.jpg"},
# {name: "Rose", city: "Tacoma,Washington", email: "janice@AOl.com",image_url:"https://randomuser.me/api/portraits/women/59.jpg"},
# {name: "Julie", city: "Tacoma,Washington", email: "janice@AOl.com",image_url:"https://randomuser.me/api/portraits/women/59.jpg"}
# ]
# friends_list = [