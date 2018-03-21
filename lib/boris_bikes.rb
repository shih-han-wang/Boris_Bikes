
class DockingStation

attr_reader :collection
attr_reader :bike

def initialize
  @collection = []
end

def release_bike
  fail 'No bikes available' unless @collection.length > 0
  @bike
  @collection.pop
end

def dock(bike)
  fail "docking station full" if collection.length == 20
  @bike = bike
  @collection.push(@bike)

end

end

class Bike
attr_reader :dock_bike
  def working?
    true
  end
end
