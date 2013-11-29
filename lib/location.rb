
# module Location

#   def planes
#     @planes ||= []
#   end

#   def planecount
#     planes.count
#   end

#   def full?
#     planecount == capacity
#   end

#   def empty?
#     planecount == 0
#   end

#   def park(plane)
#     raise "Yikes, no room at the inn." if full?
#     planes << plane 
#   end 

#   def execute_take_off_of(plane)
#     planes.delete_if do |planeref| 
#       planeref == plane 
#     end  
#   end

#   alias :execute_landing_of :park

  #  def move_from(location, plane)
  #   move_plane_between(location, self, plane)
  # end

  # def unload_to(container, borisbike)
  #   move_bike_across(self, container, borisbike)
  # end

  # def move_plane_between(airport, atmosphere, plane
  #   source.release(plane)
  #   dest.park(plane)
end