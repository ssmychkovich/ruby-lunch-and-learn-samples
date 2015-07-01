load 'array.rb'
require 'faker'



class Person < Struct.new(:name, :age)
  
  def to_s
    "#{name} #{age}"
  end
  
end


arr = []
10.times do
  arr.push Person.new("#{Faker::Name.first_name} #{Faker::Name.last_name}", rand(18..99))
end

arr.each {|person|puts person}
puts arr.map(&:age).average
puts arr.map(&:age).avg
puts arr.map(&:age).mean
puts arr.map{|person|person.name.split.first}.join(', ')
