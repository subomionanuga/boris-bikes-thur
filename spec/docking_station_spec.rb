require "docking_station.rb"

describe DockingStation do
  it "responds to release_bike" do
    expect(subject).to respond_to :release_bike
  end

  it "gets a bike and checks if working" do
    bike = Bike.new
    expect(bike.working?).to eq true
  end
  
  it "Checks if DockingStation can respond to bike with argument" do
    expect(subject).to respond_to(:return_bike).with(1).argument  
  end
  
  it "Can see if there is a bike in the dock" do
    expect(subject).to respond_to(:bike)
  end

  it "lets user return bike to docking station" do
    bike = Bike.new
    expect(subject.return_bike(bike)).to eq bike
  end

  it "stores returned bikes" do
    bike = Bike.new
    subject.return_bike(bike)
    expect(subject.bike).to eq bike
  end

  it "checks if docking station is empty" do
    expect(subject.bike).to eq nil
  end

  it "raises an error if docking station has no bike" do
    expect{ subject.release_bike }.to raise_error("The bike does not exist")
  end

end