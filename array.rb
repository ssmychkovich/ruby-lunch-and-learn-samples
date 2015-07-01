class Array
  def average
    inject{ |sum, el| sum + el }.to_f / size
  end
  alias avg average
  alias mean average
  
end
