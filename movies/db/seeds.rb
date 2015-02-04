Movie.delete_all
Actor.delete_all
MovieActor.delete_all

llv = Movie.create title: "Leaving Las Vegas"
rock = Movie.create title: "The Rock"
face_off = Movie.create title: "Face Rock"
cocktail = Movie.create title: "Cocktail"
karate_kid = Movie.create title: "Karate Kid"

cage = Actor.create name: "Nic Cage"
travolta = Actor.create name: "John Travolta"
connery = Actor.create name: "Sean Connery"
shue = Actor.create name: "Elizabeth Shue"
harris = Actor.create name: "Ed Harris"
cruise = Actor.create name: "Tom Cruise"

llv.actors << shue
llv.actors << cage
rock.actors << cage
rock.actors << connery
rock.actors << harris
face_off.actors << cage
face_off.actors << travolta
cocktail.actors << cruise
cocktail.actors << shue
karate_kid.actors << shue
