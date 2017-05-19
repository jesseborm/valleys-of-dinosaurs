def rand_age
  1 + rand(100)
end


dino1 = Dinosaur.create!( { name: "Iguanodon", age: 3, image_url: "https://goo.gl/wB6q9q" } )
dino2 = Dinosaur.create!( { name: "Mosasaurus", age: 10, image_url: "https://goo.gl/aoZsYt" } )
dino3 = Dinosaur.create!( { name: "Hungarosaurus", age: 15, image_url: "https://goo.gl/EqRlgP" } )

dino4 = Dinosaur.create!({ name: "Giraffatitan brancai", age: rand_age, image_url: "https://en.wikipedia.org/wiki/Dinosaur#/media/File:Giraffatitan_scale.png" })
