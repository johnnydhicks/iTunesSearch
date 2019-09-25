//
//  iTunesTopAlbumsTests.swift
//  iTunesTopAlbumsTests
//
//  Created by Johnny Hicks on 9/24/19.
//  Copyright © 2019 Swiftly, LLC. All rights reserved.
//

import XCTest
@testable import iTunesTopAlbums

class iTunesTopAlbumsTests: XCTestCase {
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
