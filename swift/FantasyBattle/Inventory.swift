struct Inventory {
    let equipment: Equipment
    init(equipment: Equipment) {
        self.equipment = equipment
    }

    func getBaseDamage() -> Double {
        equipment.getBaseDamage()
    }
}
