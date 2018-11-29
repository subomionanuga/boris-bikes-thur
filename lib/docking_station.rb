require_relative "bike"

class DockingStation
  
  attr_reader :bikes

  def initialize(bikes = [])
    @bikes = bikes
  end

  def release_bike
    if @bikes.nil?
      raise "The bike does not exist"
    else
      @bikes
    end
  end

  def return_bike(bike)
    @bikes = bike
    #if @bike != nil
     # raise "Fuck off mate"
    #else  
    #  @bike = bike
    #end
  end

end