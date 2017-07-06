require '../lib/docking_station.rb'

station = DockingStation.new(53)
52.times { station.dock(Bike.new) }
