module InstanceMethods
  def an_instance_method
    puts "I am an instance method"
  end
end

module ClassMethods
  def a_class_method
    puts "I am a class method"
  end
end


class MyClass
  include InstanceMethods
  extend ClassMethods
end


puts MyClass.new.an_instance_method
puts MyClass.a_class_method
