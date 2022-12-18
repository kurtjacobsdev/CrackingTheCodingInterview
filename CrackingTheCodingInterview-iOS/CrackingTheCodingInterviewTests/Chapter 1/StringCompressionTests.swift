//
//  StringCompressionTests.swift
//  CrackingTheCodingInterviewTests
//
//  Created by Kurt Jacobs on 2022/12/16.
//

import XCTest
@testable import CrackingTheCodingInterview

final class StringCompressionTests: XCTestCase {

    private let solver = StringCompressionSolver()
    private let testCases: [(input: String, answer: String)] = [
        ("aabcccccaaa", "a2b1c5a3"),
        ("abc", "abc"),
        ("aaaaaaaabc", "a8b1c1"),
        ("abccccdddd", "a1b1c4d4"),
    ]

    func testStringCompressionSolver() throws {
        for testCase in testCases {
            let result = try solver.compress(testCase.input)
            XCTAssertEqual(result, testCase.answer)
        }
    }

    func testStringCompressionSolverStack() throws {
        for testCase in testCases {
            let result = try solver.compress2(testCase.input)
            XCTAssertEqual(result, testCase.answer)
        }
    }

}
