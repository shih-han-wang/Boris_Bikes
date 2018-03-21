require 'boris_bikes'
describe DockingStation do
  it { is_expected.to respond_to(:release_bike)  }

   it "releases working bikes" do
     subject.dock Bike.new
     bike = subject.release_bike
     expect(bike).to be_working
  end

  it { is_expected.to respond_to(:bike)  }

  it "raises an error if no bikes available" do

  expect{subject.release_bike}.to raise_error("No bikes available")

  end

  it "raises an error no space in dock station" do
    20.times { subject.dock Bike.new}
  expect{subject.dock("bike")}.to raise_error("docking station full")
  end

end
