//
//  ImageDownloader.swift
//  Adapter
//
//  Created by Alex Farcasanu on 17.05.2023.
//

import UIKit

class ImageDownloader {
    func loadImage(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
}
