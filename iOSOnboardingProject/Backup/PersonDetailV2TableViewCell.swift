//
//  PersonDetailV2TableViewCell.swift
//  iOSOnboardingProject
//
//  Created by Arinjay Sharma on 15/06/21.
//

import UIKit

class PersonDetailV2TableViewCell: UITableViewCell {
    
    typealias Model = DataModel
    
    struct DataModel {
        let imageUrl: String
        let name: String
    }
    
    var dataModel: DataModel?

    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var personNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    
    }
    
}

extension PersonDetailV2TableViewCell: Bindable {
    func bind(_ model: DataModel) {
        personNameLabel.text = model.name
        personImage.loadImage(urlString: model.imageUrl)
    }
}
