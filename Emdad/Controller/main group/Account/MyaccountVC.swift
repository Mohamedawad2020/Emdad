//
//  MyaccountVC.swift
//  Emdad
//
//  Created by creative on 17/09/1440 AH.
//  Copyright © 1440 creative. All rights reserved.
//

import UIKit
import Cosmos
class MyaccountVC: UIViewController {
    @IBOutlet weak var uploadView: UIView!
    @IBOutlet weak var profile_Image: UIImageView!
    @IBOutlet weak var cosmosView: CosmosView!
    @IBOutlet weak var settingImage: UIImageView!
    
    @IBOutlet weak var phoneTF: UITextField!
    @IBOutlet weak var fullNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        uploadView.layer.cornerRadius = 64
        uploadView.clipsToBounds = true
        
      //  settingImage.tintColor = UIColor.white
        
        ratingView()
        
    }
  
    @IBAction func modifyBtn(_ sender: UIButton) {
        guard let phone = phoneTF.text, !phone.isEmpty,
        Validaton.validatephone(value: phone)
        else {return}
        
        guard let fullName = fullNameTF.text, !fullName.isEmpty else {return}
        
        guard let password = passwordTF.text, password.isEmpty else {return}
        
        let parameter = [
            "phone":phone,
            "name":fullName,
            "password":password
        ]
        
    }
    
    
    
    /// rating settings
    func saveMyRating(_ rating:Double){
        /// send rating to server
    }
    func ratingView(){
        cosmosView.didFinishTouchingCosmos = {
            rating in
            self.saveMyRating(rating)
        }
        
    }
}
