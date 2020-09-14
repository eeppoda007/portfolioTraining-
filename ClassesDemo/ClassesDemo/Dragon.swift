class Dragon: Enemy {

    var wingspan = 2
    func talk(speech: String){
        print("\(speech)")
    }
    // overide the method from the Super class
    override func move() {
        print("Fly Forwards")
    }
    override func attack() {
        // pull an action from the super class
        super.attack()
        
        print("Spits fire, does 10 damage ")
    }
}
