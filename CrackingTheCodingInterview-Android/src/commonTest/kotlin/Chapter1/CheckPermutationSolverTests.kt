package Chapter1

import Chapter1.CheckPermutationSolver
import kotlin.test.Test
import kotlin.test.assertEquals

class CheckPermutationSolverTests {
    private val solver = CheckPermutationSolver()
    private val testCases: Array<Pair<Pair<String, String>, Boolean>> = arrayOf(
        Pair(Pair("AAC","CAA"), true),
        Pair(Pair("ABC","CAA"), false),
        Pair(Pair("AAC","AAC"), false),
    )

    @Test
    fun testUniqueWithMap() {
        for (testCase in testCases) {
            val result = solver.checkPermutationWithSort(testCase.first.first, testCase.first.second)
            assertEquals(result, testCase.second, "Hello")
        }
    }
}