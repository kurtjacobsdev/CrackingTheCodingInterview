package Chapter1

/**
 * CheckPermutationSolver
 *
 * @constructor Create empty CheckPermutationSolver
 */
public class CheckPermutationSolver {
    init {}

    /**
     * Checks whether two strings a permutations of one another. Time complexity is O(n log n).
     *
     * @param input The first string value.
     * @param input2 The second string value.
     * @return A boolean that indicates whether the strings are permutation of one another.
     */
    public fun checkPermutationWithSort(input: String, input2: String) : Boolean {
        if (input == input2) { return false }
        return input.toCharArray().sorted() == input2.toCharArray().sorted()
    }
}