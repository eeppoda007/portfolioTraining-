protocol AdvancedLifeSupport {
    // anyone with this action can do this part
    func performCPR()
}

 // who ever the delegate is must have this EmergencyCallHandler
class EmergencyCallHandler {
    //associate the class with the delegate and protocol
    var delegate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can your tell me what happend?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}
struct Paramedic: AdvancedLifeSupport {
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    func performCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }
    

}
class Doctor: AdvancedLifeSupport {
    
    // assignes himself to emergency call handler as the delegate on staff
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The doctor does chest compressions, 30 per second.")
    }
    
    func useStethescope() {
        print("Listening for heart sounds")
    }
    
}
 // surgeon auto matical adopts the protocol AdvancedLifeSupport because it inherits for doctor class
class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings staying alive by the BeeGees")
    }
    
    func useElectricDrill() {
        print("whirr....")
    }
}
// created obj
let emilio = EmergencyCallHandler()
// pete the paramedic give the call to emelio
//let pete = Paramedic(handler: emilio)
let angela = Surgeon(handler: emilio)
//emilio get a call then asseses the situation
emilio.assessSituation()
// then deams its a medical emergency
emilio.medicalEmergency()
