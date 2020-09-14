protocol CanFly {
    func fly()
  
}
extension CanFly{
    func fly() {
        print("The object takes off into the air.")
    }
}

class Bird {
    
    func layEgg() {
        print("The bird makes a new bird in a shell.")
    }
    
   
}
class Eagle: Bird, CanFly {
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky")
    }
    
    func soar()  {
        print("The eagle glides inthe air using air currents. ")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water.")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}
struct Airplane: CanFly {
    func fly() {
        print("The airplane lifts off into the sky")
    }
    
    
}

let myEagle = Eagle()
//myEagle.fly()
//myEagle.layEgg()

let myPenguin = Penguin()
//myPenguin.layEgg()
//myPenguin.swim()
//myPenguin.fly()

let museum = FlyingMuseum()
let myPlane = Airplane()
museum.flyingDemo(flyingObject:myPlane)
myPlane.fly()
