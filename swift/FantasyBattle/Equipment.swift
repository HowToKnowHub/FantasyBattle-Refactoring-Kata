protocol EquipmentProtocol {
    var leftHand: Item { get }
    var rightHand: Item { get }
    var head: Item { get }
    var feet: Item { get }
    var chest: Item { get }
    func getBaseDamage() -> Double
}

struct Equipment: EquipmentProtocol {
    var leftHand: Item
    var rightHand: Item
    var head: Item
    var feet: Item
    var chest: Item

    func getBaseDamage() -> Double {
         leftHand.getBaseDamage() +
                rightHand.getBaseDamage() +
                head.getBaseDamage() +
                feet.getBaseDamage() +
                chest.getBaseDamage()
    }
}
