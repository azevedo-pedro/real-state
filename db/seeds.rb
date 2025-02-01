# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


taylor  = Artist.create! email: 'taylor@email.com', first_name: 'Taylor', last_name: 'Swift'

Item.create!(
  [
    {
      title: "Red (Taylor's Version)",
      description: "Loving him is like driving a new Maserati down a dead-end street...",
      artist: taylor,
      image_url: "https://static.wikia.nocookie.net/taylor-swift/images/9/93/Red_%28Taylor%27s_Version%29.jpeg/revision/latest/scale-to-width-down/1000?cb=20210618181243"
    },
    {
      title: "All Too Well (Taylor's Version)",
      description: "It was rare, I was there, I remember it all too well",
      artist: taylor,
      image_url: "https://static.wikia.nocookie.net/taylor-swift/images/9/93/Red_%28Taylor%27s_Version%29.jpeg/revision/latest/scale-to-width-down/1000?cb=20210618181243"
    },
    {
      title: "We Are Never Ever Getting Back Together (Taylor's Version)",
      description: "You go talk to your friends, talk to my friends, talk to me",
      artist: taylor,
      image_url: "https://static.wikia.nocookie.net/taylor-swift/images/9/93/Red_%28Taylor%27s_Version%29.jpeg/revision/latest/scale-to-width-down/1000?cb=20210618181243"
    },
    {
      title: "Begin Again (Taylor's Version)",
      description: "But on a Wednesday in a café, I watched it begin again",
      artist: taylor,
      image_url: "https://static.wikia.nocookie.net/taylor-swift/images/9/93/Red_%28Taylor%27s_Version%29.jpeg/revision/latest/scale-to-width-down/1000?cb=20210618181243"
    }
  ]
)
