# grand final
# Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# Be careful of the weather, it could be stormy!
# Check when all the planes have landed that they have the right status "landed"
# Once all the planes are in the air again, check that they have the status of flying!
require_relative '../lib/airport'
require_relative '../lib/plane'
require_relative '../lib/weather'
require_relative '../lib/finale'

class Finale; 

  describe Finale do
    let (:jfk) {Airport.new(:capacity => 6)}

    it 'should allow 6 planes to land in good weather' do
      planes = []
      6.times {planes << Plane.new}
      jfk.michael_fish(0.2)
      jfk.arrive(planes)
      expect(jfk.planecount).to eq(6)
      expect(planes[0]).not_to be_flying
    end

    it 'should allow all planes to land and all planes to take off' do
      planes = []
      6.times {planes << Plane.new}
      jfk.grand_finale(planes, jfk)
      expect(jfk.planecount).to eq(0)
    end

  end

end