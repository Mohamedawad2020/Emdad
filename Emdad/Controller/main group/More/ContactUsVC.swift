//
//  ContactUsVC.swift
//  Emdad
//
//  Created by creative on 25/09/1440 AH.
//  Copyright © 1440 creative. All rights reserved.
//

import UIKit

class ContactUsVC: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var messageTV: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        messageSetings()
        
    }
    func messageSetings() {
        let borderColor : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        messageTV.layer.borderWidth = 2
        messageTV.layer.borderColor = borderColor.cgColor
        messageTV.layer.cornerRadius = 0.5
    }
    
    @IBAction func sendBtnPressed(_ sender: UIButton) {
        guard let username = userNameTF.text, !username.isEmpty else{return}
        guard let email = emailTF.text, Validaton.isValidEmailAddress(emailAddressString: email) else {return}
        guard let message = messageTV.text,!message.isEmpty else {return}
        
    }
    
}
