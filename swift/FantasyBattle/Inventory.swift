struct Inventory {
    let equipment: EquipmentProtocol
    init(equipment: EquipmentProtocol) {
        self.equipment = equipment
    }

    func getBaseDamage() -> Double {
        equipment.getBaseDamage()
    }
}
