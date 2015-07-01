class Name
  attr_accessor :first, :last, :middle
  
  def initialize(first, last, middle=nil)
    @first = first
    @last = last
    @middle=middle
  end
  
  def short_full_name
    "#{first} #{last}"
  end
end

name = Name.new 'Joe', 'Blow'

puts name.short_full_name