require 'boris_bikes'
describe DockingStation do
  it { is_expected.to respond_to(:release_bike)  }

#  it "releases working bikes" do
#    bike = subject.release_bike
#    expect(bike).to be_working
#  end

  it { is_expected.to respond_to(:bike)  }

  # it "returns docked bikes" do
  #  # bike = Bike.new
  #  subject.dock("bike")
  #  # expect(subject.bike).to eq bike
  # end

  it "raises an error if no bikes available" do

  expect{subject.release_bike}.to raise_error("No bikes available")

  end

  it "raises an error no space in dock station" do
    subject.dock(Bike.new)
  expect{subject.dock("bike")}.to raise_error("docking station full")
  end

end
