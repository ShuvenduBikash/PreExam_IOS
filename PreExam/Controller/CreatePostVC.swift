//
//  CreatePostVC.swift
//  PreExam
//
//  Created by Shuvendu Bikash on 30/11/17.
//  Copyright © 2017 Shuvendu Bikash. All rights reserved.
//

import UIKit

class CreatePostVC: UIViewController {

    @IBOutlet weak var sendBtn: UIButton!
    @IBOutlet weak var textField: UITextView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    @IBAction func sendBtnPressed(_ sender: Any) {
    }
}

extension CreatePostVC: UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        //textView.text = ""
    }
}
