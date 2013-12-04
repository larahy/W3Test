require_relative '../lib/airport'
require_relative '../lib/plane'
require_relative '../lib/weather'


class Finale 

  describe Finale do

    it 'should allow all planes to land and all planes to take off' do
      boeing = Plane.new
      concorde = Plane.new
      spitfire = Plane.new
      messerschmitt = Plane.new
      airbus = Plane.new
      airforceone = Plane.new
      airport = Airport.new(:capacity => 6)
      airport.weather_forecast(0.2)
      airport.execute_landing_of(boeing)
      expect(boeing).not_to be_flying
      airport.execute_landing_of(concorde)
      expect(concorde).not_to be_flying
      airport.execute_landing_of(spitfire)
      expect(spitfire).not_to be_flying
      airport.execute_landing_of(messerschmitt)
      expect(messerschmitt).not_to be_flying
      airport.execute_landing_of(airbus)
      expect(airbus).not_to be_flying
      airport.execute_landing_of(airforceone)
      expect(airforceone).not_to be_flying
      expect(airport).to be_full
      airport.execute_take_off_of(boeing)
      expect(boeing).to be_flying
      airport.execute_take_off_of(concorde)
      expect(concorde).to be_flying
      airport.execute_take_off_of(spitfire)
      expect(spitfire).to be_flying
      airport.execute_take_off_of(messerschmitt)
      expect(messerschmitt).to be_flying
      airport.execute_take_off_of(airbus)
      expect(airbus).to be_flying
      airport.execute_take_off_of(airforceone)
      expect(airforceone).to be_flying
      expect(airport).to be_empty

    end

    # it 'should allow all planes to land and all planes to take off' do
    #   planes = []
    #   6.times {planes << Plane.new}
    #   jfk.grand_finale(planes, jfk)
    #   expect(jfk.planecount).to eq(0)
    #   expect(planes[0]).to be_flying
    # end

  end
end

# Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# Be careful of the weather, it could be stormy!
# Check when all the planes have landed that they have the right status "landed"
# Once all the planes are in the air again, check that they have the status of flying!

# - there's something really wrong with finale_spec. Why are you creating an array in the test and then passing it to jfk instead of landing each plane individually by calling Airport#execute_landing_of()?
# - why does a plane have an array of planes inside it? Such a thing does exist but that wasn't the point of the test :)
# Verdict: badge if you fix these issues