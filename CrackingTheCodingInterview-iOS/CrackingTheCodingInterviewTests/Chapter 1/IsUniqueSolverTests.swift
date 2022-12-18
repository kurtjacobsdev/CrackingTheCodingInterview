//
//  IsUniqueSolverTests.swift
//  CrackingTheCodingInterviewTests
//
//  Created by Kurt Jacobs on 2022/12/16.
//

import XCTest
@testable import CrackingTheCodingInterview

final class IsUniqueSolverTests: XCTestCase {
    private let solver = IsUniqueSolver()
    private let testCases: [(input: String, answer: Bool)] = [
        ("hello", false),
        ("poop", false),
        ("paxo", true),
        ("flex", true),
        ("abcdefghijklmnopqrstuvwxyz", true),
        ("abcdefghijklmnopqrstuvwxyza", false),
        ("abcdefghijklmnopqrstuvwxyz:-+$51", true),
        ("flex1122A", false),
    ]

    // MARK: Correctness Testing

    func testUniqueWithMap() throws {
        for testCase in testCases {
            let solution = solver.uniqueWithMap(testCase.input)
            XCTAssertEqual(solution, testCase.answer)
        }
    }

    func testUniqueWithSorted() throws {
        for testCase in testCases {
            let solution = solver.uniqueWithSorted(testCase.input)
            XCTAssertEqual(solution, testCase.answer)
        }
    }

    // MARK: Performance Testing

    func testUniqueWithMapPerformance() throws {
        // This is an example of a performance test case.
        self.measure {
            for testCase in testCases {
                 solver.uniqueWithMap(testCase.input)
            }
        }
    }

    func testUniqueWithSortedPerformance() throws {
        self.measure {
            for testCase in testCases {
                solver.uniqueWithSorted(testCase.input)
            }
        }

    }
}
