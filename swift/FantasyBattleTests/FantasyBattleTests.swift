import XCTest

class FantasyBattleTests: XCTestCase {
    func testGetBaseDamage() {
        let equipment = EquipmentImplementation()
        let inventory = Inventory(equipment: equipment)
        let stats = Stats(strength: 100.0)
        let player = Player(inventory: inventory, stats: stats)
        XCTAssertEqual(player.getBaseDamage(), 100.0)
    }


    struct EquipmentImplementation : EquipmentProtocol {
        func getBaseDamage() -> Double {
            return 100
        }
    }


class ItemImplementation : Item {

}

extension ItemImplementation {
   func getBaseDamage() -> Double {
     return 100
    }

    func getDamageModifier() -> Double {
        return 0.0
    }
}
