



class Blah
  def self.blah
    puts "I am a blah"
  end
  
  def self.blah2
    puts "I am another blah"
  end
end



class Doer
  def self.do(blah, blah2)
    blah.call
    blah2.call
  
  end
  
end

b = lambda{Blah.blah}
b2 = lambda{Blah.blah2}

Doer.do b2, b









# context = 'If you\'re happy and you know it'
#
#
# l = Proc.new do
#   puts "#{context}"
#   puts "#{local}"
# end
#
# class Blah
#   def self.blah(&l)
#     local = "I know local"
#
#     yield
#
#
#   end
#
# end
#
#
# Blah.blah do
#   puts "#{context}"
#   puts "#{local}"
# end

# l = lambda do |name, value|
#   value += 1
#   puts "context is #{context}, value is #{value}"
# end
#
# l.call 'blah', 0

# proc = Proc.new do
#   # puts "Hello, #{name}."
#   puts "I know what context is: #{context}" if defined? context
#   puts 'I got no eye deer about no context' unless defined? context
# end
#
#
# class Worker
#   def initialize(code)
#     @code = code
#   end
#
#   def run
#     # context = 'If you\'re happy and you know it'
#     @code.call('joe')
#   end
# end
#
#
# Worker.new(proc).run

# Worker.new(code).run
# Worker.new(proc).run
# puts context
# proc.call 'Sergei'
# puts context