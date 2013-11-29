class Plane

  def initialize
    default
  end 

  def default
    @grounded = true
  end

  def grounded?
    @grounded
  end

  def take_off
    @grounded = false
  end

  alias :land :default

  def planes
    @planes ||= []
  end

  def planecount
    planes.count
  end


end 