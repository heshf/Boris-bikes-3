require './lib/docking_station'

describe DockingStation do
    # it 'responds to release_bike' do
    #   expect(subject).to respond_to :release_bike

    it { is_expected.to respond_to :release_bike}

    it 'releases working bikes' do
      bike = Bike.new
      expect(bike).to be_working
    end

    it 'docks a bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end

  it "doesn't have any bikes" do
   subject.bikes == []
   expect {subject.release_bike}.to raise_error("Sorry mate, no bikes left")
    end

  before (:example) do
    @newdock = DockingStation.new
    20.times { @newdock.dock(Bike.new) }
  end

  it "does not have room for more bikes" do
    # subject.bikes != []
    # capacity = subject().capacity
      expect {@newdock.dock(Bike.new)}.to raise_error("No slots available")
    end

  it "Does not release broken bikes" do
    broken_bike = DockingStation.new
    broken_bike.dock(broken_bike)
    broken_bike.broken?
    expect {broken_bike}.to raise_error("Cannot release bike as it is broken")
  end

  it 'customer can report broken bike if it is returned broken' do
    test_bike.working = false
    ds.dock(test_bike)
    expect(ds.bikes.working?).to eq false
  end

  it 'do not release a bike if broken' do
    bike = Bike.new
    bike.report_broken
    subject.dock(bike)
    expect(subject.release_bike).to raise_error "Cannot release bike as it is broken"
  end

end
