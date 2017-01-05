require './lib/DockingStation'
#new docking station
docking_station = DockingStation.new
#new bike
bike = Bike.new
#break the bike
bike.report_broken
#try docking a bike
docking_station.dock(bike)
#try releasing the broken bike
docking_station.release_bike