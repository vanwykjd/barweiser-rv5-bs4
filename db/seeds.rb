# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Plan.count == 0
  
  puts "Creating plans"

  Plan.create!(
    name: 'Wise',
    price: 30,
    created_at: Date.new
  )

  Plan.create!(
    name: 'Weiser',
    created_at: Date.new
  )

  Plan.create!(
    name: 'Wisest',
    created_at: Date.new
  ) 
end
Plan.all

if Service.count == 0 && Plan.count > 0
   puts "Creating services"
  
## Wise Plan Servies
  Service.create!(
    plan_id: 1,
    name: 'Bio'
  )

  Service.create!(
    plan_id: 1,
    name: 'Events'
  )

  Service.create!(
    plan_id: 1,
    name: 'Specials'
  )
  
## Weiser Plan Services
  Service.create!(
    plan_id: 2,
    name: 'Bio'
  )

  Service.create!(
    plan_id: 2,
    name: 'Events'
  )

  Service.create!(
    plan_id: 2,
    name: 'Specials'
  )

  Service.create!(
    plan_id: 2,
    name: 'Push Notifications'
  )

  Service.create!(
    plan_id: 2,
    name: 'Occupancy Tracking'
  )

  Service.create!(
    plan_id: 2,
    name: 'Demographics'
  )

## Wisest Plan Services
  Service.create!(
    plan_id: 3,
    name: 'Bio'
  )

  Service.create!(
    plan_id: 3,
    name: 'Events'
  )

  Service.create!(
    plan_id: 3,
    name: 'Specials'
  )

  Service.create!(
    plan_id: 3,
    name: 'Push Notifications'
  )

  Service.create!(
    plan_id: 3,
    name: 'Occupancy Tracking'
  )

  Service.create!(
    plan_id: 3,
    name: 'Demographics'
  )

  Service.create!(
    plan_id: 3,
    name: 'Geo-located Activity'
  )

  Service.create!(
    plan_id: 3,
    name: 'Real-time Occupancy/Demographics'
  )

  Service.create!(
    plan_id: 3,
    name: 'Media Account'
  )

end

Service.all


puts "Seed finished"
puts "#{Plan.count} plans created"
puts "#{Service.count} services created"
