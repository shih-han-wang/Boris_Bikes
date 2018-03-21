
class DockingStation

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
   end

   #def available?
    # raise "no bikes available"
   #end

  def dock(bike)
    fail "docking station full" if @bike
    @bike = bike
  end

  attr_reader :bike
end

class Bike
  attr_reader :dock_bike
  def working?
    true
  end
end
