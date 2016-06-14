c1 = Cat.create(name: "Moe", breed: "Tabby", weight: "fat")
c2 = Cat.create(name: "Ciprian", breed: "Calico", weight: "skinny")

h1 = Hobby.create(name: "eating")
h2 = Hobby.create(name: "playing")

CatHobby.create(cat: c1, hobby: h1)
CatHobby.create(cat: c2, hobby: h2)