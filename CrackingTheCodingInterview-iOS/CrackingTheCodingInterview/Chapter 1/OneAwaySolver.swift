//
//  OneAwaySolver.swift
//  CrackingTheCodingInterview
//
//  Created by Kurt Jacobs on 2022/12/16.
//

import Foundation

public class OneAwaySolver {
    public init() {}

    //TBA Better Solution.

    @discardableResult
    /// Algorithm determines if it would require more than a single edit to make the inputs equal. Time complexity is O(n) and Space complexity is O(n).
    /// - Parameters:
    ///   - input: The first string.
    ///   - input2: The second string.
    /// - Returns: A boolean that indicates whether the strings are equal after only a single edit or non.
    public func solve(_ input: String, _ input2: String) -> Bool {
        var edits = 0
        guard abs(input.count - input2.count) < 2 else { return false }

        let left = input.toStack()
        let right = input2.toStack()

        while !left.isEmpty() && !right.isEmpty() {
            if edits > 1 { return false }

            let leftCurrent = left.pop()
            let rightCurrent = right.pop()

            if leftCurrent != rightCurrent {
                if left.size() > right.size() {
                    left.pop()
                    right.insert(item: rightCurrent!)
                    edits += 1
                }
                else if right.size() > left.size() {
                    right.pop()
                    left.insert(item: leftCurrent!)
                    edits += 1
                } else {
                    edits += 1
                }
            }
        }

        return edits <= 1
    }
}

// MARK: Helpers

fileprivate class Stack<T> {
    private var items: [T] = []

    func insert(item: T) {
        items.insert(item, at: 0)
    }

    @discardableResult
    func pop() -> T? {
        return items.popLast()
    }

    func isEmpty() -> Bool {
        return items.count == 0
    }

    func size() -> Int {
        return items.count
    }
}

extension String {
    fileprivate func toStack() -> Stack<Character> {
        let stack = Stack<Character>()
        for char in self {
            stack.insert(item: char)
        }
        return stack
    }
}
