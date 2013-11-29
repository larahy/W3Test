require_relative '../lib/airport'
require_relative '../lib/plane'
 
describe Airport do

  let(:airport) {Airport.new}
  let(:plane) {Plane.new}

  it 'should have a default capacity of 10' do
    expect(airport.capacity).to eq(10)
  end

  it 'should allow planes to be parked at the airport' do
    airport.park(plane)
    expect(airport.planecount).to eq(1)
  end

end 

# context 'Take off and Landing' do

#   it 'should allow planes to take off' do

