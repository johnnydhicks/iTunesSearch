//
//  AlbumDetailViewController.swift
//  iTunesTopAlbums
//
//  Created by Johnny Hicks on 9/23/19.
//  Copyright © 2019 Swiftly, Inc. All rights reserved.
//

import UIKit

class AlbumDetailViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var metadataLabel: UILabel!
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var itunesButton: UIButton!
    
    // MARK: - Properties
    var album: Album? {
        didSet {
            self.updateViews()
        }
    }
    var albumArtImage: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        self.updateViews()
    }
    
    // MARK: - IBActions
    @IBAction func itunesButtonTapped(_ sender: Any) {
        self.navigateToItunes()
    }
    
    // MARK: - Private Methods
    private func updateViews() {
        guard album != nil && self.isViewLoaded else { return }
        self.metadataLabel.text = self.generateMetadataString()
        self.albumLabel.text = self.album?.name
        self.artistLabel.text = self.album?.artistName
        self.imageView.image = self.albumArtImage
    }
    
    private func generateMetadataString() -> String {
        let genres = album?.genres.compactMap({ (genre) -> String in
            return genre.name
        })
        var metadataString: [String] = []
        if let genresString = genres?.joined(separator: ", ") {
            metadataString.append(genresString)
        }
        
        if let releaseDataString = album?.releaseDate {
            metadataString.append("Released: \(releaseDataString)")
        }
        
        if let copyrightString = album?.copyright {
            metadataString.append(copyrightString)
        }
        
        let combinedString = metadataString.joined(separator: ". ")
        return combinedString
    }
    
    private func navigateToItunes() {
        if let urlString = self.album?.url,
            let url = URL(string: urlString) {
            UIApplication.shared.open(url, options: [:]) { (_) in}
        }
    }
}
