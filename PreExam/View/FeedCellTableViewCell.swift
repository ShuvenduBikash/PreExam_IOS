//
//  FeedCellTableViewCell.swift
//  PreExam
//
//  Created by Shuvendu Bikash on 1/12/17.
//  Copyright © 2017 Shuvendu Bikash. All rights reserved.
//

import UIKit

class FeedCellTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var emailLbl: UILabel!
    
    @IBOutlet weak var contentLbl: UILabel!
    
    func configureCell(profileImage: UIImage, email: String, content: String){
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        self.contentLbl.text = content
    }
}
