require_relative 'plane'

class Airport

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

   def planes
    @planes ||= []
  end

  def planecount
    planes.count
  end

  def full?
    planecount == capacity
  end

  def empty?
    planecount == 0
  end

  def park(plane)
    raise "Yikes, no room at the inn." if full?
    planes << plane 
  end 

  def execute_take_off_of(plane)
    planes.delete_if do |planeref| 
      planeref == plane 
    end  
    plane.take_off
  end

  alias :execute_landing_of :park
end 