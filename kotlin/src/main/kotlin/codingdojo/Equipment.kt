package codingdojo

class Equipment(
    // TODO add a ring item that may be equipped
    //  that may also add damage modifier

    val leftHand: Item,
    val rightHand: Item,
    val head: Item,
    val feet: Item,
    val chest: Item,
    val tail: Item,
    val wings: Item
) {
    private val bodyParts: List<Item> = listOf(leftHand, rightHand, head, feet, chest, tail, wings)
    
    fun damageModifier(): Float =
        bodyParts.map({it.damageModifier}).reduce{acc, damageModifier ->
            acc + damageModifier


    /*fun damageModifier(): Float {
        return leftHand.damageModifier +
                rightHand.damageModifier +
                head.damageModifier +
                feet.damageModifier +
                chest.damageModifier +
                tail.damageModifier
    }*/
}

