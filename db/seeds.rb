def rand_age
  1 + rand(100)
end

Dinosaur.delete_all
Valley.delete_all

valley1 = Valley.create!(name: "Ordesa Valley")
valley2 = Valley.create!(name: "Waipi'o Valley")
valley3 = Valley.create!(name: "The Valley of Geysers")

valleys_count = Valley.all.length
puts "#{valleys_count} valleys were created."

Dinosaur.create!([
  { name: "Iguanodon", age: 3, image_url: "https://goo.gl/i0S0iv", valley: valley1 },
  { name: "Mosasaurus", age: 10, image_url: "https://goo.gl/MYf6Sc", valley: valley2 },
  { name: "Hungarosaurus", age: 15, image_url: "https://goo.gl/bS5SdS", valley: valley3 },
  { name: "Giraffatitan brancai", age: rand_age, image_url: "https://en.wikipedia.org/wiki/Dinosaur#/media/File:Giraffatitan_scale.png", valley: valley3 },
])

dinos_count = Dinosaur.all.length
puts "#{dinos_count} dinosaurs were created."
