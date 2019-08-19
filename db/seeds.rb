require 'faker'

20.times do
	Group.create!(group_code: Faker::Code.npi, name: Faker::Coffee.blend_name, location: Faker::Address.full_address, description: Faker::Lorem.sentence)
end