# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Project.create(name: 'Test Project', description: 'This is our test project.', goal: 100,
            start: DateTime.new(2014, 2, 26), end: DateTime.new(2014, 2, 27), founder_id: 1)

Project.create(name: 'Test Project2', description: 'This is our 2nd test project.', goal: 101,
            start: DateTime.new(2014, 3, 26), end: DateTime.new(2014, 3, 29), founder_id: 2)


Reward.create(project_id: 1, tier_value: 1, tier_description: 'Thank you', max_quantity: 1000)
Reward.create(project_id: 1, tier_value: 5, tier_description: 'Sticker', max_quantity: 2000)
Reward.create(project_id: 2, tier_value: 10, tier_description: 'T-Shirt', max_quantity: 3000)
Reward.create(project_id: 2, tier_value: 15, tier_description: 'Pants', max_quantity: 4000)