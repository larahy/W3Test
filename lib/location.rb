
module Location

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
    # raise "Yikes, no room at the inn." if full?
    planes << plane 
  end 

end