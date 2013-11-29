require_relative '../lib/plane'

describe Plane do

  let(:plane) {Plane.new}

  it 'should have a default status of flying' do
    expect(plane).to be_flying
  end

  it 'should be able to land' do
    plane.land
    expect(plane).not_to be_flying
  end

  it 'should be able to take_off' do
    plane.take_off
    expect(plane).to be_flying
  end
end 
