require_relative '../lib/plane'

describe Plane do

  let(:plane) {Plane.new}

  it 'should have a default status of grounded' do
    expect(plane).to be_grounded
  end

  it 'should be able to take off' do
    plane.take_off
    expect(plane).not_to be_grounded
  end

  it 'should be able to land' do
    plane.take_off
    plane.land
    expect(plane).to be_grounded
  end
  

end 