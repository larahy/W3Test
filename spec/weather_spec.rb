require_relative '../lib/weather'

class WeatherGod; include Weather 

  describe Weather do
    let(:airport) {Airport.new}
    let(:plane) {Plane.new}
    let(:weather) {WeatherGod.new}

    it 'should be sunny by default' do
      weather.default
      expect(weather).to be_sunny
    end

    it 'should not always be sunny' do
      weather.stormy
      expect(weather).not_to be_sunny
    end

    it 'should assign weather status randomly' do
      weather.michael_fish(0.8)
      expect(weather).not_to be_sunny
    end 
  end 
end