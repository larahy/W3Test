class Plane

  def initialize
    default
  end 

  def default
    @flying = true
  end

  def flying?
    @flying
  end

  def land
    @flying = false
    self
  end

  alias :take_off :default

  def planecount
    plane.count
  end


end 