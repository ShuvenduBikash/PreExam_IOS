//
//  MeMC.swift
//  PreExam
//
//  Created by Shuvendu Bikash on 30/11/17.
//  Copyright © 2017 Shuvendu Bikash. All rights reserved.
//

import UIKit
import Firebase

class MeVC: UIViewController {
    
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func signOutBtnWasPressed(_ sender: Any) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        
    }
    

}
