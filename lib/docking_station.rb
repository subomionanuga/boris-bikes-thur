require_relative "bike"

class DockingStation
  def initialize
    @bike = bike
  end
    
  def release_bike
    Bike.new
  end

  def return_bike(bike)
    true
  end
end