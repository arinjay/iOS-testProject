//
//  ListViewController.swift
//  iOSOnboardingProject
//
//  Created by Arinjay Sharma on 15/06/21.
//

import UIKit

class ListViewController: UIViewController {
    
    struct Constants {
        static let personDetailV1Cell = "PersonDetailsTableViewCell"
        static let personDetailV2Cell = "PersonDetailV2TableViewCell"
    }

    var responseData: UserAPIData?
    
    @IBOutlet weak var tableView: UITableView!{
        didSet {
            tableView.register(UINib(nibName: Constants.personDetailV1Cell, bundle: nil),
                               forCellReuseIdentifier: Constants.personDetailV1Cell)
            tableView.register(UINib(nibName: Constants.personDetailV2Cell, bundle: nil),
                               forCellReuseIdentifier: Constants.personDetailV2Cell)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

