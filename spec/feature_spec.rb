require './lib/DockingStation'
#new docking station
docking_station = DockingStation.new
#new bike
bike = Bike.new
#try docking a bike
docking_station.dock(bike)
#try releasing a bike
docking_station.release_bike
