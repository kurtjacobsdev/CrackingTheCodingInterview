//
//  StringCompressionSolver.swift
//  CrackingTheCodingInterview
//
//  Created by Kurt Jacobs on 2022/12/16.
//

import Foundation

public enum StringCompressionSolverError: Error {
    case internalError
}

public class StringCompressionSolver {
    public init() {}

    @discardableResult
    public func compress(_ input: String) throws -> String {
        var compressed = ""
        var tally = 0
        var prev: Character?
        for char in input {
            if char == prev || prev == nil {
                tally += 1
            } else {
                guard let prev = prev else { throw StringCompressionSolverError.internalError }
                compressed += String(prev) + "\(tally)"
                tally = 1
            }
            prev = char
        }

        guard let prev = prev else { throw StringCompressionSolverError.internalError }
        compressed += String(prev) + "\(tally)"
        return (compressed.count < input.count) ? compressed : input
    }

    @discardableResult
    public func compress2(_ input: String) throws -> String {
        var stack = Stack<Character>()
        var compressed = ""
        for char in input {
            if stack.peek() != char && stack.size() > 0 {
                compressed += "\(stack.peek()!)\(stack.size())"
                stack = Stack<Character>()
                stack.push(item: char)
            } else {
                stack.push(item: char)
            }
        }
        compressed += "\(stack.peek()!)\(stack.size())"
        return (compressed.count < input.count) ? compressed : input
    }
}

fileprivate class Stack<T> {
    private var items: [T] = []

    func peek() -> T? {
        return items.first
    }

    func push(item: T) {
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
