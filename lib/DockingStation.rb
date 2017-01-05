require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    empty?
    next_bike = @bikes.last
    fail "No bikes present" if next_bike.broken?
    @bikes.pop
  end

  def dock(bike)
    full?
    @bikes << bike
  end

  private
  
  attr_reader :bikes
  
  def full?
    fail "Dock full" if @bikes.count >= @capacity
  end

  def empty?
    fail "No bikes present" if @bikes.empty?
  end
end
