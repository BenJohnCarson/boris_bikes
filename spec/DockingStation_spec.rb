require 'DockingStation'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end
  
  it "Responds to dock" do
    expect(subject).to respond_to :dock_bike
  end
  
  it { is_expected.to respond_to(:dock_bike).with(1).argument }
  
  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq bike
  end
  
  it 'responds to bike' do
    expect(subject).to respond_to :bike
  end
  
  it 'returns a docked bike' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike).to eq bike
  end
  
  describe "#Releases a bike" do
    it 'releases the same bike' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
    end
    
    it "Releases a bike" do
      expect {subject.release_bike}.to raise_error 'No bikes'
    end
  end
end