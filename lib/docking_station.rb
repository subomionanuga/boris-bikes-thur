require_relative "bike"

class DockingStation
  
  attr_reader :bike
    
  def release_bike
    Bike.new
  end

  def return_bike(bike)
    @bike = bike
  end

end