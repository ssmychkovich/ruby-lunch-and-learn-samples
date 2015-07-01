require 'faker'

class Person < Struct.new(:name, :age)
end

people = []
10.times do
  people.push Person.new Faker::Name.name, rand(18..80)
end


people.map &:name
people.map &:age
people.map{|p|p.name.split.first}
