# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
users = [
          { name: 'Rakesh', preferred_working_hour_per_day: 7.5 },
          { name: 'Umesh', preferred_working_hour_per_day: 7.5 }
        ]
User.create(users)

worklogs = [
  { user_id: 1, date: Date.new(2021,01,20), hours: 7.5, notes: 'Project 1 work'},
  { user_id: 1, date: Date.new(2021,01,21), hours: 5.5, notes: 'Project 2 work'},
  { user_id: 1, date: Date.new(2021,01,22), hours: 2.5, notes: 'Project 3 work'},
  { user_id: 2, date: Date.new(2021,01,20), hours: 4, notes: 'Project 4 work'},
  { user_id: 2, date: Date.new(2021,01,21), hours: 3, notes: 'Project 5 work'},
  { user_id: 2, date: Date.new(2021,01,22), hours: 4.5, notes: 'Project 6 work'}
]

Worklog.create(worklogs)

