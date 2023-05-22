//
//  UIImageViewExtension.swift
//  Adapter
//
//  Created by Alex Farcasanu on 17.05.2023.
//

import UIKit

extension UIImageView {

    func downloadImage(at url: URL) {
        ImageDownloader().loadImage(from: url) { data, response, error in
            guard let data = data, error == nil else { return }
            DispatchQueue.main.async() { [weak self] in
                self?.image = UIImage(data: data)
            }
        }
    }
}
