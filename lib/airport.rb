require_relative 'plane'
require_relative 'weather'

class Airport

  include Weather

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
    raise "Weather conditions unfavourable" if !sunny?
    planes << plane 
    plane.land
  end 

  alias :execute_landing_of :park

  def execute_take_off_of(plane)
    raise "Weather conditions unfavourable" if !sunny?
    planes.delete_if do |planeref| 
      planeref == plane 
    end  
    plane.take_off
  end

  def arrive(planes)
    planes.each do |plane|
      self.execute_landing_of(plane)
    end
  end

  def depart(planes)
    planes.each do |plane|
      self.execute_take_off_of(plane)
    end
  end

  def grand_finale(planes, jfk)
    self.michael_fish()
    if self.michael_fish() == true
      jfk.arrive(planes)
      jfk.depart(planes)
    els
      self.michael_fish()
    end
  end


end 