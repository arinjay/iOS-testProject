//
//  Bindable.swift
//  iOSOnboardingProject
//
//  Created by Arinjay Sharma on 15/06/21.
//

import Foundation

protocol Bindable {
    associatedtype Model
    
    func bind(_ model: Model)
}
