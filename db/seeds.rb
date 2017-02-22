# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Moodboard.destroy_all
User.destroy_all
Asset.destroy_all

User.create!([
  {
    first_name: "Kenny",
    last_name: "Kenny",
    username: "Kenny",
    email: "kenny@kenny.com",
    password: "password",
    password_confirmation: "password"
  },
  {
    first_name: "Jos",
    last_name: "Jos",
    username: "jos",
    email: "jos@jos.com",
    password: "password",
    password_confirmation: "password"
  }
])

Moodboard.create!([
  {
    project_name: "Finish WDI Alive",
    brief: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    user_id: User.first.id
  },
  {
    project_name: "Paint my beaker/canteen/flask/bottle/thing blue",
    brief: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    user_id: User.last.id
  }
])

Asset.create!([
  {
    url: "https://pbs.twimg.com/profile_images/813584000082214912/5U3iZVs-.jpg",
    moodboard_id: Moodboard.first.id,
    x_position: 0,
    y_position: 0,
    width: 300,
    height: 300
  },
  {
    url: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAgbAAAAJDg3YzlhOWNiLWUzNWQtNDQ1ZC1hMGUwLTkwM2YwYzJhMjhlOA.jpg",
    moodboard_id: Moodboard.first.id,
    x_position: 0,
    y_position: 0,
    width: 200,
    height: 200
  },
  {
    url: "https://pbs.twimg.com/profile_images/2673559611/c39fde18f7eb8b829c7f8ee17206d3d1_400x400.jpeg",
    moodboard_id: Moodboard.first.id,
    x_position: 0,
    y_position: 0,
    width: 250,
    height: 250
  },
  {
    url: "http://i.ebayimg.com/images/g/a1kAAOxyhXRTK4pG/s-l640.jpg",
    moodboard_id: Moodboard.last.id,
    x_position: 0,
    y_position: 0,
    width: 300,
    height: 300
  },
  {
    url: "http://i.ebayimg.com/00/s/NTAwWDUwMA==/z/lHMAAOxygPtS-rNe/$_3.JPG?set_id=2",
    moodboard_id: Moodboard.last.id,
    x_position: 0,
    y_position: 0,
    width: 300,
    height: 300
  },
  {
    url: "http://cdn3.volusion.com/omyms.usggv/v/vspfiles/photos/121FR-2.jpg",
    moodboard_id: Moodboard.last.id,
    x_position: 0,
    y_position: 0,
    width: 400,
    height: 400
  }
])
