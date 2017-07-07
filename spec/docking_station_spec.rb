require './lib/docking_station'

describe DockingStation do
    # it 'responds to release_bike' do
    #   expect(subject).to respond_to :release_bike

    it { is_expected.to respond_to :release_bike}

    # it 'releases working bikes' do
    #   bike = double(:bike)
    #   expect(bike).to be_working
    # end

    it 'docks a bike' do
      bike = double(:bike)
      expect(subject.dock(bike)).to eq [bike]
    end

  it "doesn't have any bikes" do
   subject.bikes == []
   expect {subject.release_bike}.to raise_error("Sorry mate, no bikes left")
    end

  it "does not have room for more bikes" do
   @newdock = DockingStation.new
    20.times { @newdock.dock(double(:bike)) }
      expect {@newdock.dock(double(:bike))}.to raise_error("No slots available")
    end


  it 'do not release a bike if broken' do
    bike = double(:bike)
    bike.report_broken
    subject.dock(bike)
    expect(subject.release_bike).to raise_error "Cannot release bike as it is broken"
  end

end
