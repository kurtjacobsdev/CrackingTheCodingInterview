//
//  OneAwaySolverTests.swift
//  CrackingTheCodingInterviewTests
//
//  Created by Kurt Jacobs on 2022/12/16.
//

import XCTest
@testable import CrackingTheCodingInterview

final class OneAwaySolverTests: XCTestCase {
    private let solver = OneAwaySolver()
    private let testCases: [(input: (str: String, str2: String), answer: Bool)] = [
        (("pale","pale"), true),
        (("pale","ple"), true),
        (("pales","pale"), true),
        (("pale","bale"), true),
        (("pale","bal"), false),
        (("pale","bake"), false),
        (("pale","bak"), false),
        (("pale","pal"), true),
        (("pal","pale"), true),
        (("gooooooooood","gooooood"), false),
        (("goop","oop"), true),
        (("lol","pop"), false),
        (("aaaa","bbbb"), false),
        (("aaaa","bbb"), false),
        (("aaa","bbbb"), false),
        (("bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb","bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"), true),
    ]

    func testOneAwaySolver() throws {
        for testCase in testCases {
            let result = solver.solve(testCase.input.str, testCase.input.str2)
            XCTAssertEqual(result, testCase.answer)
        }
    }

    func testOneAwaySolverPerformance() throws {
        self.measure {
            for testCase in testCases {
                solver.solve(testCase.input.str, testCase.input.str2)
            }
        }
    }

}
