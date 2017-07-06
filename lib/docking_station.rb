require_relative 'bike'

class DockingStation
  attr_reader :bikes

  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
	@bikes = []
  @capacity = capacity
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
    if @bikes.length >= @capacity
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
