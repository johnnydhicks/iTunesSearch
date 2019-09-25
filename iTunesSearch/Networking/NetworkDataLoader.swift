//
//  NetworkDataLoader.swift
//  iTunesSearch
//
//  Created by Johnny Hicks on 9/24/19.
//  Copyright © 2019 Swiftly, LLC. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    func loadData(with request: URLRequest, completion: @escaping (Data?, Error?) -> Void)
}


