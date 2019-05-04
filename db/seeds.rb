

premises = [
  {name: "teste", address: "Location 1"},
  {name: "teste2", address: "Location 2"}
]

premises.each do |p|
  Premise.create(p)
end

stations = [
  {serial: "#{rand(1000000)}", name: "station 1", premise_id: 1},
  {serial: "#{rand(1000000)}", name: "station 2", premise_id: 1},
  {serial: "#{rand(1000000)}", name: "station 3", premise_id: 2},
  {serial: "#{rand(1000000)}", name: "station 4", premise_id: 2}
]

stations.each do |s|
  Station.create(s)
end
