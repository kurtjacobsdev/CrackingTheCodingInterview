//
//  isUnique.swift
//  
//
//  Created by Kurt Jacobs on 2022/12/16.
//

import Foundation

/// IsUniqueSolver is a class that determines whether a string is comprised of only unique characters.
public class IsUniqueSolver {
    public init() {}

    /// Implementation using map data structure to test for a string that contains only unique characters. Algorithm is O(n) runtime complexity.
    /// - Parameter input: The input string value.
    /// - Returns: A boolean value that indicates whether or not the string has only unique characters
    @discardableResult
    public func uniqueWithMap(_ input: String) -> Bool {
        var dictionary: [Character: Bool] = [:]
        for char in input {
            if dictionary[char] != nil { return false }
            dictionary[char] = true
        }
        return true
    }

    /// Implementation using only arrays to test for a string that contains only unique characters that takes into account space. Algorithm is O(n) runtime complexity.
    /// - Parameter input: The input string value.
    /// - Returns: A boolean value that indicates whether or not the string has only unique characters
    @discardableResult
    public func uniqueWithSorted(_ input: String) -> Bool {
        let sorted = input.sorted()
        for index in 0..<(sorted.count - 1) {
            if !(sorted[index] < sorted[index+1]) { return false }
        }
        return true
    }
}
