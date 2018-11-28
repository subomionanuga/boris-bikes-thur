require 'docking_station.rb'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end
  it 'gets a bike and check if working' do
    bike = DockingStation.new.release_bike
    expect(bike).to respond_to :working?
  end

end