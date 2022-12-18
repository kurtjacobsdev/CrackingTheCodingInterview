package Chapter1

import kotlin.test.Test
import kotlin.test.*

class IsUniqueSolverTests {
    private val solver = IsUniqueSolver()
    private val testCases: Array<Pair<String, Boolean>> = arrayOf(
        Pair("ABCDEFGHIJKL", true),
        Pair("ABCDEFGHIJKLA", false),
        Pair("ABCDEFG56789HIJKL", true),
        Pair("ABCDEFGH1123IJKLA", false),
    )

    @Test
    fun testUniqueWithMap() {
        for (testCase in testCases) {
            val result = solver.uniqueWithMap(testCase.first)
            assertEquals(result, testCase.second, "")
        }
    }

    @Test
    fun testUniqueWithSort() {
        for (testCase in testCases) {
            val result = solver.uniqueWithSort(testCase.first)
            assertEquals(result, testCase.second, "")
        }
    }
}