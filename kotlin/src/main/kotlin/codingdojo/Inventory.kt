package codingdojo

open class Inventory(val equipment: Equipment) {
    val baseDamage: Int
    get() {
        return equipment.baseDamage
    }



}
