package codingdojo

class Equipment(
    // TODO add a ring item that may be equipped
    //  that may also add damage modifier
    val leftHand: Item,
    val rightHand: Item,
    val head: Item,
    val feet: Item,
    val chest: Item,
    val wing: Item,
    val tail: Item
) {
    val baseDamage: Int
    get() {
        return leftHand.baseDamage +
            rightHand.baseDamage +
            head.baseDamage +
            feet.baseDamage +
            chest.baseDamage +
                wing.baseDamage + tail.baseDamage
    }
}
