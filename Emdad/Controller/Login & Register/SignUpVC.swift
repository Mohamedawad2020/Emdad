//
//  SignUpVC.swift
//  Emdad
//
//  Created by creative on 15/09/1440 AH.
//  Copyright © 1440 creative. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import SVProgressHUD
class SignUpVC: UIViewController {

    @IBOutlet weak var showAndHide: UIButton!
    var iconClick = true
    
    @IBAction func showAndHideBtn(_ sender: UIButton) {
        if iconClick {
            passwordTF.isSecureTextEntry = false
            
            let image = UIImage(named: "hide")
            showAndHide.setImage(image, for: .normal)
        }else {
            passwordTF.isSecureTextEntry = true
            
            let image = UIImage(named: "eye")
            showAndHide.setImage(image, for: .normal)
        }
        iconClick = !iconClick
    }
    @IBOutlet weak var fullNameTF: UITextField!
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var phoneTF: UITextField!
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    
    
    
    @IBAction func RegisterBtn(_ sender: UIButton) {
        
        let url = URLS.registerUrl
        let fullName = fullNameTF.text!
        let userName = userNameTF.text!
        let email = emailTF.text!
        let password = passwordTF.text!
        let phone = phoneTF.text!
        
        if fullName.isEmpty || userName.isEmpty || email.isEmpty || password.isEmpty || phone.isEmpty {
            SVProgressHUD.show(withStatus: "all_fields_required".localized())
            SVProgressHUD.dismiss(withDelay: 1.5)
        }else if !Validaton.isValidEmailAddress(emailAddressString: email){
            SVProgressHUD.showError(withStatus: "email_invaild".localized())
            SVProgressHUD.dismiss(withDelay: 1.5)
        }else if !Validaton.validatephone(value: phone) {
            SVProgressHUD.showError(withStatus: "phone_invaild".localized())
            SVProgressHUD.dismiss(withDelay: 1.5)
        }else {
        SVProgressHUD.show(withStatus: "registering...")
        let parameters = [
            "name":fullName,
            "user_name":userName,
            "email":email,
            "password":password,
            "phone_code":"00966",
            "phone":phone,
            "software_type":"2"
        ]
        /// api request
        Alamofire.request(url, method: .post, parameters: parameters).responseJSON { response in
            SVProgressHUD.dismiss()
            switch response.result {
            case .failure(let error):
                SVProgressHUD.showError(withStatus: (error as! String))
                SVProgressHUD.dismiss(withDelay: 3)
                print("yu fail !")
                print(error)
            case .success(let value):
                let vc = UIStoryboard(name: "Main", bundle: nil)
                let rootVc = vc.instantiateViewController(withIdentifier: "main")
                self.present(rootVc,animated: true,completion: nil)
                print("yu success !")
                print(value)
                
            }
        }
        }
    
        
    }
    
   /// to go to anothor screen
//    let vc = UIStoryboard(name: "Main", bundle: nil)
//    let rootVc = vc.instantiateViewController(withIdentifier: "main")
//    present(rootVc,animated: true,completion: nil)

    

}
