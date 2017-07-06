require_relative 'bike'

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
    @bikes << bike
    end
end
