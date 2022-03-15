struct Equipment {
    public let leftHand: Item
    public let rightHand: Item
    public let head: Item
    public let feet: Item
    public let chest: Item
    public let tail: Item

    func getBaseDamage() -> Double {
        return leftHand.getBaseDamage() +
                rightHand.getBaseDamage() +
                head.getBaseDamage() +
                feet.getBaseDamage() +
                chest.getBaseDamage() +
                tail.getBaseDamage()
    }

    func getDamageModifier() -> Player {
        return
                leftHand.getDamageModifier() +
                        rightHand.getDamageModifier() +
                        head.getDamageModifier() +
                        feet.getDamageModifier() +
                        chest.getDamageModifier() +
                        tail.getDamageModifier()
    }
}
