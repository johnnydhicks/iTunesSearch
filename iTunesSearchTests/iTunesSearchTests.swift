//
//  iTunesSearchTests.swift
//  iTunesSearchTests
//
//  Created by Johnny Hicks on 9/24/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import XCTest
@testable import iTunesSearch

class iTunesSearchTests: XCTestCase {
    func testForTopTenResults() {
        let mock = MockDataLoader()
        mock.data = sampleJsonData
        let controller = NetworkController(dataLoader: mock)
        
        let resultsExpectation = expectation(description: "Wait for search results")
        
        controller.fetchItunesData { (_) in
            resultsExpectation.fulfill()
        }
        
        wait(for: [resultsExpectation], timeout: 2.0)
        
        XCTAssertTrue(controller.albums.count == 10)
    }
}
