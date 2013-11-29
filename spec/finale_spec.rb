require_relative '../lib/airport'
require_relative '../lib/plane'
require_relative '../lib/weather'

class Finale; 

  describe Finale do
    let (:jfk) {Airport.new(:capacity => 6)}

    it 'should allow all planes to land and all planes to take off' do
      planes = []
      6.times {planes << Plane.new}
      jfk.grand_finale(planes, jfk)
      expect(jfk.planecount).to eq(0)
      expect(planes[0]).to be_flying
    end

  end

end