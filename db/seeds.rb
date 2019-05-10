# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

ACTIVE = ['Yes', 'No']

departments = Department.create!([{ name: 'HR' }, { name: 'Tech' }, { name: 'Finance' }])

ACTIVE.each do |act|
  departments.each do |department|
    100.times { Employee.create!(name: Faker::Name.first_name, department_id: department.id, active: act) }
  end
end

p "Created #{Department.count} departments"
p "Created #{Employee.count} users"
