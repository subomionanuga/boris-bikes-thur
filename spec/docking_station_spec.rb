require 'docking_station.rb'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end
  it 'gets a bike and check if working' do
    bike = DockingStation.new.release_bike
    expect(bike.working?).to eq true
  end
  it 'lets user return bike to docking station' do
    expect(subject.return_bike(thing)).to eq true 
  end
  
end