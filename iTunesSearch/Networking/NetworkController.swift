//
//  NetworkController.swift
//  iTunesSearch
//
//  Created by Johnny Hicks on 9/23/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit

struct Feed: Decodable {
    var feed: Albums
}

struct Albums: Decodable {
    var results: [Album]
}

struct Album: Decodable {
    var artistName: String
    var name: String
    var copyright: String
    var artworkUrl100: String
    var genres: [Genre]
    var releaseDate: String
    var url: String
}

struct Genre: Decodable {
    var name: String
}

class NetworkController {
    
    let dataLoader: NetworkDataLoader
    private(set) var albums: [Album] = []
    init(dataLoader: NetworkDataLoader = URLSession.shared) {
        self.dataLoader = dataLoader
    }
    
    let baseURL = URL(string: "https://rss.itunes.apple.com/api/v1/us/apple-music/top-albums/all/100/explicit.json")!
    
    func fetchItunesData(completion: @escaping (Feed?) -> Void) {
        let request = URLRequest(url: baseURL)
        
        self.dataLoader.loadData(with: request) { (data, error) in
            if let error = error {
                NSLog("Error: \(error.localizedDescription)")
                completion(nil)
                return
            }
            
            guard let data = data else {
                NSLog("No data")
                completion(nil)
                return
            }
            
            do {
                let feed = try JSONDecoder().decode(Feed.self, from: data)
                self.albums = feed.feed.results
                completion(feed)
            } catch let error {
                print("There was an error decoding your data:%@", error)
                completion(nil)
            }
        }
    }
    
    func fetchAlbumArt(for url: URL, completion: @escaping (UIImage?) -> Void) {
        let request = URLRequest(url: url)
        self.dataLoader.loadData(with: request) { (data, error) in
            if let error = error {
                NSLog("Error fetching image for album art:%@", error.localizedDescription)
                completion(nil)
                return
            }
            
            guard let data = data else {
                NSLog("No data received for url: %@", url.description)
                completion(nil)
                return
            }
            
            let image = UIImage(data: data)
            completion(image)
        }
    }
}
