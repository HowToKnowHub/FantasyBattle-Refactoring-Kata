package codingdojo

import com.nhaarman.mockitokotlin2.mock
import org.junit.Ignore
import org.junit.Test
import kotlin.test.assertEquals

class PlayerTest {

    // choose this one if you are familiar with mocks
    @Ignore("Test is not finished yet")
    @Test
    fun damageCalculationsWithMocks() {
        val inventory: Inventory = mock()
        val stats: Stats = mock()
        val target: SimpleEnemy = mock()

        val damage = Player(inventory, stats).calculateDamage(target)

        assertEquals(10, damage.amount)
    }

    // choose this one if you are not familiar with mocks
    @Ignore("Test is not finished yet")
    @Test
    fun damageCalculations() {
        val inventory = Inventory(null !!)
        val stats = Stats(0)
        val target = SimpleEnemy(null !!, null !!)

        val damage = Player(inventory, stats).calculateDamage(target)

        assertEquals(10, damage.amount)
    }

    @Test
    fun baseDamageCalculation() {
        val item = ItemImpl()
    val equipment = Equipment(item, item, item, item, item, item, item)
        assertEquals(7, equipment.baseDamage)
    }

    class ItemImpl(
      override val baseDamage: Int = 1,
        override val damageModifier: Float = 1f
    ): Item

    @Test
    fun baseSmtg() {
        val stats: Stats = Stats(1)
        val item = ItemImpl()
        val equipment = Equipment(item, item, item, item, item, item, item)
        val inventory = Inventory(equipment)
        val player = Player(inventory, stats)
        val modifier = player.damageModifier
        assertEquals(5.1F, modifier)
    }

}
