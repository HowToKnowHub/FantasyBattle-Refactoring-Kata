struct Player: Target {
    let equipment: Equipment, stats: Stats
    init(equipment: Equipment, stats: Stats) {
        self.inventory = inventory
        self.stats = stats
    }
    
    func calculateDamage(other: Target) -> Damage {
        let baseDamage = equipment.getBaseDamage()
        let damageModifier = getDamageModifier()
        let totalDamage = baseDamage * damageModifier
        let soak = getSoak(other: other, totalDamage: totalDamage)
        return Damage(amount: max(0, totalDamage - soak))
    }
    
    func getDamageModifier() -> Double {
        return equipment.getDamageModifier() + stats.strength * 0.1
    }
    
    func getSoak(other: Target, totalDamage: Double) -> Double {
        var soak = 0.0
        if let player = other as? Player {
            // TODO: Not implemented yet
            //  Add friendly fire
            soak = totalDamage
        } else if let simpleEnemy = other as? SimpleEnemy {
            soak =
                simpleEnemy.getArmor().getDamageSoak() *
                simpleEnemy.getBuffs().map {$0.soakModifier()}.reduce(1, +)
        }
        return soak
    }
    
}
