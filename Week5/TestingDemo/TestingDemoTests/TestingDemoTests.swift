//
//  TestingDemoTests.swift
//  TestingDemoTests
//
//  Created by Bennett Lee on 2/19/25.
//

import XCTest
@testable import TestingDemo

// 1 test case => 1 system under test

final class TestingDemoTests: XCTestCase {

    var studentManager: StudentManager!
    // init ---> studentManager is nil ---> setup

    // Execute before each unit test
    override func setUp() {
        studentManager = StudentManager()
    }

    // Executed after each unit test
    override func tearDown() {
    }

    func testInsert() {
        // 1. Setting up the context
        // 2. Perform ideally a "single" action (e.g. execute method)
        // 3. Verify the results. Is the expected outcome the same as the actual outcome (i.e. assertion)

        // Step 1
        let john = Student(name: "John")

        // Step 2
        studentManager.insert(student: john, at: 0)

        // Step 3
        XCTAssertEqual(studentManager.numberOfStudents, 1)
        XCTAssertEqual(studentManager.students[0].name, "John")
    }

    func testRemove() {
        // Step 1
        studentManager.students = [
            Student(name: "John")
        ]

        // Step 2
        studentManager.remove(at: 0)

        // Step 3
        XCTAssertEqual(studentManager.numberOfStudents, 0)
    }

}
