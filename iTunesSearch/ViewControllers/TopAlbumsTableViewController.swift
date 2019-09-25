//
//  TopAlbumsTableViewController.swift
//  iTunesSearch
//
//  Created by Johnny Hicks on 9/23/19.
//  Copyright © 2019 Swiftly, Inc. All rights reserved.
//

import UIKit

class TopAlbumsTableViewController: UITableViewController {
    
    // MARK: - Properties
    private let networkController = NetworkController()
    private let imageLoadingQueue = DispatchQueue(label: "FetchPhotos")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fetchAlbums()
    }
    
    // MARK: - Network Request
    private func fetchAlbums() {
        networkController.fetchItunesData { (feed) in
            if let _ = feed {
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.networkController.albums.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AlbumCell", for: indexPath)
        
        let album = self.networkController.albums[indexPath.row]
        cell.textLabel?.text = album.name
        cell.detailTextLabel?.text = album.artistName
        cell.imageView?.image = UIImage(named: "artwork.cover")
        cell.tag = indexPath.row
        imageLoadingQueue.async {
            if let albumURL = URL(string:album.artworkUrl100) {
                self.networkController.fetchAlbumArt(for: albumURL) { (image) in
                    
                    DispatchQueue.main.async {
                        if let image = image,
                            cell.tag == indexPath.row {
                            cell.imageView?.image = image
                        }
                    }
                }
            }
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AlbumDetail",
            let vc = segue.destination as? AlbumDetailViewController,
            let indexPath = self.tableView.indexPathForSelectedRow {
            let cell = tableView.cellForRow(at: indexPath)
            let album = self.networkController.albums[indexPath.row]
            vc.album = album
            vc.albumArtImage = cell?.imageView?.image
        }
    }
}

