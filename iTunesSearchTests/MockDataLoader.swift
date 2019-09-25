//
//  MockDataLoader.swift
//  iTunesSearchTests
//
//  Created by Johnny Hicks on 9/24/19.
//  Copyright © 2019 Swiftly, LLC. All rights reserved.
//

import Foundation
@testable import iTunesSearch

class MockDataLoader: NetworkDataLoader {
    var request: URLRequest?
    var data: Data?
    var error: Error?
    
    func loadData(with request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        self.request = request
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
}
