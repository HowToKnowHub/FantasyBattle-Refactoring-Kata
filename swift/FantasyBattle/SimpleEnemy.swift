protocol SimpleEnemy {
    func getArmor() -> Armor
    func getDamageSoak() -> Double
    func getBuffs() -> [Buff]
}

extension SimpleEnemy {
    func getDamageSoak() -> Double {
        return getArmor().getDamageSoak()
    }
}