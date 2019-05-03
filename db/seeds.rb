

premises = [{name: "teste", address: "Location 1"},
            {name: "teste2", address: "Location 2"}
]

premises.each do |p|
  Premise.create(p)
end
