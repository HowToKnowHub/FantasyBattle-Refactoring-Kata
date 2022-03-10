package codingdojo

class Equipment(
    // TODO add a ring item that may be equipped
    //  that may also add damage modifier
    val leftHand: Item,
    val rightHand: Item,
    val head: Item,
    val feet: Item,
    val chest: Item
) {

    fun damageModifier(): Float {
        val leftHand = this.leftHand
        val rightHand = this.rightHand
        val head = this.head
        val feet = this.feet
        val chest = this.chest
        return leftHand.damageModifier +
                rightHand.damageModifier +
                head.damageModifier +
                feet.damageModifier +
                chest.damageModifier
    }
}

