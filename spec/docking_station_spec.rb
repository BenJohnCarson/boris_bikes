require 'DockingStation'

describe  DockingStation do
  it { is_expected.to respond_to :release_bike}
  it 'releases bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  
  it { is_expected.to respond_to :dock_bike}
end