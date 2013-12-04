require_relative '../lib/airport'
require_relative '../lib/plane'
require_relative '../lib/weather'
 
describe Airport do

  let(:airport) {Airport.new}
  let(:plane) {Plane.new}
  let(:pointless_airport) {Airport.new(:capacity => 1)}


  context 'Take off and Landing' do

    it 'should allow planes to take off' do
      airport.default
      airport.execute_landing_of(plane)
      airport.execute_take_off_of(plane)
      expect(airport.planecount).to eq(0)
    end

    it 'should allow planes to land' do
      airport.default
      airport.execute_landing_of(plane)
      expect(airport.planecount).to eq(1)
      expect(plane).not_to be_flying
    end
  end

  context 'traffic control' do

    it 'should not allow a plane to land if the airport is full' do
      pointless_airport.default
      pointless_airport.execute_landing_of(plane)
      # small_airport.execute_landing_of(plane)
      expect(lambda { pointless_airport.execute_landing_of(plane) }).to raise_error(RuntimeError)
    end 
  end

  context 'weather conditions' do

    it 'should either be sunny or stormy at the airport' do
      airport.weather_forecast(0.8)
      expect(airport).not_to be_sunny
    end

    it 'should not allow planes to take off if it is stormy' do
      airport.stub(:weather_forecast){false}
      expect(lambda { airport.execute_take_off_of(plane) }).to raise_error(RuntimeError)
    end 

    it 'should not allow planes to land in the middle of a storm' do
      airport.stub(:weather_forecast){false}
      expect(lambda { airport.execute_landing_of(plane) }).to raise_error(RuntimeError)
    end 
  end 
end


