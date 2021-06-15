//
//  UIImageView+Extension.swift
//  iOSOnboardingProject
//
//  Created by Arinjay Sharma on 15/06/21.
//

import UIKit

extension UIImageView {
    func loadImage(urlString: String) {
        getData(from: URL(string: urlString)) { data, response, error in
            guard let data = data,
                  error == nil,
                  let image = UIImage(data: data) else { return}
            print(response?.suggestedFilename ?? "")
            print("Download Finished")
            DispatchQueue.main.async() { [weak self] in
                self?.image = image
            }
        }
    }
    
    private func getData(from url: URL?, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        guard let imageURL = url else {return }
        URLSession.shared.dataTask(with: imageURL, completionHandler: completion).resume()
    }
}
