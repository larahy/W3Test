require_relative 'plane'
require_relative 'weather'
require_relative 'airport'

class Finale
  include Weather

  planes = []
  6.times {planes << Plane.new}

  jfk = Airport.new(:capacity => 6)
  jfk.michael_fish()


  # def grand_finale(planes, jfk)
  #   until jfk.michael_fish() == stormy do
  #     jfk.arrive(planes)
  #     jfk.depart(planes)
  #   end
  # end

end

