//
//  Model.swift
//  iOSOnboardingProject
//
//  Created by Arinjay Sharma on 15/06/21.
//

import Foundation

struct UserAPIData: Decodable {
    let results: [ResultElement]?
    
    // MARK: - ResultElement
    struct ResultElement: Decodable {
        let gender: String
        let name: Name
        let location: Location
        let email, phone: String
        let picture: Picture
    }

    // MARK: - Location
    struct Location: Decodable {
        let country: String
    }

    // MARK: - Name
    struct Name: Decodable {
        let title, first, last: String
    }

    // MARK: - Picture
    struct Picture: Decodable {
        let large, medium, thumbnail: String
    }
}



