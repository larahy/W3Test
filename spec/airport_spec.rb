require_relative '../lib/airport'
require_relative '../lib/plane'
require_relative '../lib/weather'
 
describe Airport do

  let(:airport) {Airport.new}
  let(:plane) {Plane.new}
  let(:pointless_airport) {Airport.new(:capacity => 1)}

  it 'should have a default capacity of 10' do
    expect(airport.capacity).to eq(10)
  end

  it 'should allow planes to be parked at the airport' do
    airport.default
    airport.park(plane)
    expect(airport.planecount).to eq(1)
  end

  context 'Take off and Landing' do

    it 'should allow planes to take off' do
      airport.default
      airport.park(plane)
      airport.execute_take_off_of(plane)
      expect(airport.planecount).to eq(0)
    end

    it 'should allow planes to land' do
      airport.default
      airport.park(plane)
      airport.execute_take_off_of(plane)
      airport.execute_landing_of(plane)
      expect(airport.planecount).to eq(1)
      expect(plane).not_to be_grounded
    end
  end

  context 'traffic control' do

    it 'should not allow a plane to land if the airport is full' do
      pointless_airport.default
      pointless_airport.park(plane)
      # small_airport.execute_landing_of(plane)
      expect(lambda { pointless_airport.park(plane) }).to raise_error(RuntimeError)
    end 

    it 'should not allow planes to take off if it is stormy' do
      airport.default
      airport.park(plane)
      airport.stormy
      expect(lambda { airport.execute_take_off_of(plane) }).to raise_error(RuntimeError)
    end 

  end 

end


