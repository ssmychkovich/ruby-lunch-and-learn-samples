require 'singleton'

class ApplicationConfiguration 
  include Singleton
  
  def add(name, value)
    throw "Name must be a symbol" unless name.is_a? Symbol
    
    self.class.send(:define_method, name, -> { value })
  end
  
  def method_missing(name, *args, &block)
    respond_to? name[0...-1] if name.to_s.end_with? '?'  
  end
     
end


config = ApplicationConfiguration.instance


config.add :root, "pub/www"
config.add :logs, "opt/logs"
config.add :environment, "production"

config[:root]
config.root
config.root?
puts config.brute?



