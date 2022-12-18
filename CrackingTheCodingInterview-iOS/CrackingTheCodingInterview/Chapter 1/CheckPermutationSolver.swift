//
//  CheckPermutation.swift
//  CrackingTheCodingInterview
//
//  Created by Kurt Jacobs on 2022/12/16.
//

import Foundation

public class CheckPermutationSolver {
    public init() {}

    /// Checks whether two strings a permutations of one another. Time complexity is O(n log n) as indicated on https://developer.apple.com/documentation/swift/string/unicodescalarview/sorted()
    /// - Parameters:
    ///   - input: The first string value.
    ///   - input2: The second string value.
    /// - Returns: A boolean that indicates whether or not the strings are permutation of one another.
    @discardableResult
    public func checkPermutationWithSort(_ input: String, _ input2: String) -> Bool {
        guard input != input2 else { return false}
        return input.sorted() == input2.sorted()
    }

}
