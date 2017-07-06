require './lib/bike'

class DockingStation
  attr_reader :bikes

def initialize
	@bikes = []
end

  def release_bike
  	fail "Sorry mate, no bikes left" if bikes.empty?
  end

# def bikes
# 	return bikes = []<<Bike.new
# end

  def dock(bike)
    if bikes.length >= 20
    fail "No slots available"
    else
    @bikes << bike
    end
  end

end
