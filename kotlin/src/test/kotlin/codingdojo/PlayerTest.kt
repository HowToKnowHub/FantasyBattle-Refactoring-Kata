package codingdojo

import com.nhaarman.mockitokotlin2.eq
import com.nhaarman.mockitokotlin2.mock
import com.nhaarman.mockitokotlin2.whenever
import org.junit.Ignore
import org.junit.Test
import org.mockito.Mock
import kotlin.test.assertEquals

class PlayerTest {

    // choose this one if you are familiar with mocks
    @Ignore
    @Test
    fun damageCalculationsWithMocks() {
        val equipment: Equipment = mock()
        whenever(equipment.damageModifier()).thenReturn(10F)
        val stats: Stats = mock()
        whenever(stats.strength).thenReturn(1)

        //val target: SimpleEnemy = mock()
        val player = Player(equipment, stats)
        p

        val damage = Player(equipment, stats).calculateDamage(target)

        assertEquals(10, damage.amount)
    }

    // choose this one if you are not familiar with mocks
    @Ignore
    @Test
    fun damageCalculations() {
        val inventory = Inventory(null !!)
        val stats = Stats(0)
        val target = SimpleEnemy(null !!, null !!)

        val damage = Player(inventory.equipment, stats).calculateDamage(target)

        assertEquals(10, damage.amount)
    }
}
