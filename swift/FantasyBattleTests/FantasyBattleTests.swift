import XCTest

class FantasyBattleTests: XCTestCase {

    func testGetBaseDamage() {
        let mockItemInstance = MockItem()
        let equipment = MockEquipment(leftHand: mockItemInstance, rightHand: mockItemInstance ,head: mockItemInstance, feet: mockItemInstance,chest: mockItemInstance)
        let inventory = Inventory(equipment: equipment)
        let stats = Stats(strength: 100.0)
        let player = Player(inventory: inventory, stats: stats)
        XCTAssertEqual(player.getBaseDamage(), 100.0)
    }
}

class MockItem : Item {
    func getDamageModifier() -> Double {
        100.0
    }
    func getBaseDamage() -> Double{
        100.0
    }
}


class MockEquipment : EquipmentProtocol {
    var leftHand: Item
    var rightHand: Item
    var head: Item
    var feet: Item
    var chest: Item

    init(leftHand:Item, rightHand: Item, head: Item, feet: Item, chest: Item) {
        self.leftHand = leftHand
        self.rightHand = rightHand
        self.head = head
        self.feet = feet
        self.chest = chest
    }


    func getBaseDamage() -> Double {
       100.0
    }
}

//extension Item {
//   func getBaseDamage() -> Double {
//      100
//    }
//
//    func getDamageModifier() -> Double {
//        0.0
//    }
//}
