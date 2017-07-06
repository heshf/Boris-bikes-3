require './lib/bike'

class DockingStation
  attr_reader :bikes

  DEFAULT_CAPACITY = 20

  def initialize
	@bikes = []
  end

  def release_bike
  	fail "Sorry mate, no bikes left" if empty?
  end

  def dock(bike)
    fail "No slots available" if full?
    @bikes << bike
  end

private

  def full?
    if @bikes.length >= DEFAULT_CAPACITY      
      return true
    else
      return false
    end
  end

  def empty?
    if @bikes.empty?
      return true
    else
    return false
  end
end

end
