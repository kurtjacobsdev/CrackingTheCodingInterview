//
//  CheckPermutationSolverTests.swift
//  CrackingTheCodingInterviewTests
//
//  Created by Kurt Jacobs on 2022/12/16.
//

import XCTest
@testable import CrackingTheCodingInterview

final class CheckPermutationSolverTests: XCTestCase {
    private let solver = CheckPermutationSolver()
    private let testCases: [(input: (str: String, str2: String), answer: Bool)] = [
        (("AAB","BAA"), true),
        (("AAC","AAC"), false),
        (("AABZ","BAAF"), false),
        (("AABA","ABAA"), true),
    ]

    func testPermutationSolver() throws {
        for testCase in testCases {
            let result = solver.checkPermutationWithSort(testCase.input.str, testCase.input.str2)
            XCTAssertEqual(result, testCase.answer)
        }
    }

    func testPermutationSolverPerformance() throws {
        self.measure {
            for testCase in testCases {
                solver.checkPermutationWithSort(testCase.input.str, testCase.input.str2)
            }
        }
    }

}
