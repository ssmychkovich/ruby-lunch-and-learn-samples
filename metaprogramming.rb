class Store
  def learn(name, value)
    
    instance_variable_set "@#{name}", value
    
    self.class.send(:define_method, name) do
      instance_variable_get(:"@#{name}")
    end
    
    self.class.send(:define_method, :"#{name}=") do |value|
      set_instance_variable(name, value)
    end
    
  end
end

store = Store.new
store.learn :blah, 4