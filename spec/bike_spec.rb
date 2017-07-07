require 'bike'

describe Bike do

	# it "responds to #working?" do
	# 	expect(subject).to respond_to :working?
	# end

	it "responds to #broken" do
		expect(subject).to respond_to :broken?
	end

  it "check is bike is broken" do
    expect(subject.broken?).to eq false
  end


end
