c1 = Cat.create(name: "Moe", breed: "Tabby", weight: "fat", temperament: "protective")
c2 = Cat.create(name: "Ciprian", breed: "Calico", weight: "skinny", temperament: "friendly")
c3 = Cat.create(name: "Mini", breed: "Tabby", weight: "large", temperament: "sweet")
c4 = Cat.create(name: "Sparky", breed: "dog", weight: "average", temperament: "confused")
c5 = Cat.create(name: "Nona", breed: "Calico", weight: "a bit fat", temperament: "mean and rude")

h1 = Hobby.create(name: "eating")
h2 = Hobby.create(name: "playing")

CatHobby.create(cat: c1, hobby: h1)
CatHobby.create(cat: c2, hobby: h2)