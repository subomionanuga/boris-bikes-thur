require_relative "bike"

class DockingStation
  
  attr_reader :bike
    
  def release_bike
    if @bike.nil?
      raise "The bike does not exist"
    else
      @bike
    end
  end

  def return_bike(bike)
    if @bike != nil
      raise "Fuck off mate"
    else  
      @bike = bike
    end
  end

end