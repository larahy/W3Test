require_relative 'plane'
require_relative 'location'

class Airport
  
  include Location

  DEFAULT_CAPACITY = 10

 def initialize(options = {})
    self.capacity = options.fetch(:capacity, capacity)
  end
 
  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def capacity=(value)
    @capacity = value
  end

end 