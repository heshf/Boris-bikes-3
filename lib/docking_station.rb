require_relative 'bike'

class DockingStation
  attr_reader :bikes

  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
	@bikes = []
  @capacity = capacity
  end

  def release_bike(bike)

  	fail "Sorry mate, no bikes left" if empty?
    fail "Cannot release bike as it is broken" if bike.broken?

  end

  def dock(bike)
    fail "No slots available" if full?
    @bikes << bike
  end

private

  def full?
    @bikes.length >= @capacity ? true : false
  end

  def empty?
    @bikes.empty? ? true : false
  end

end
