require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
  	fail "Sorry mate, no bikes left" if bikes.empty?
  	Bike.new
  end


def bikes
	return []
end

  def dock(bike)
    @bike = bike
  end
end
