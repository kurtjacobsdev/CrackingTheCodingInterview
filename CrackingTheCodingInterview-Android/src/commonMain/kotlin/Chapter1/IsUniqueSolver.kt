package Chapter1

/**
 * Chapter1.IsUniqueSolver
 *
 * @constructor Create empty Chapter1.IsUniqueSolver
 */
public class IsUniqueSolver {
    init {}

    /**
     * Naive implementation to test for a string that contains only unique characters. Algorithm is O(n) runtime complexity and uses array and dictionary datastructures.
     *
     * @param input The input string value.
     * @return A boolean value that indicates whether the string has only unique characters.
     */
    public fun uniqueWithMap(input: String): Boolean {
        val map = mutableMapOf<Char, Int>()
        for (character in input) {
            if (map[character] != null) { return false }
            map[character] = 1
        }
        return true
    }

    /**
     * Implementation using only arrays to test for a string that contains only unique characters that takes into account space. Algorithm is O(n log n) runtime complexity.
     *
     * @param input The input string value.
     * @return A boolean value that indicates whether the string has only unique characters.
     */
    public fun uniqueWithSort(input: String): Boolean {
        val sorted = input.toCharArray().sorted()
        for (index in 0 until sorted.indices.count() - 1) {
            if (sorted[index] >= sorted[index+1]) { return false }
        }
        return true
    }
}