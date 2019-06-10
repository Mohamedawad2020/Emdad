//
//  ViewController.swift
//  Emdad
//
//  Created by creative on 14/09/1440 AH.
//  Copyright © 1440 creative. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class LoginVC: UIViewController {

    @IBOutlet weak var errorLable: UILabel!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    
    
    
//    override func viewDidAppear(_ animated: Bool) {
//        // 1
//        let nav = self.navigationController?.navigationBar
//        
//        // 2
////        nav?.barStyle = UIBarStyle.black
//        nav?.tintColor = UIColor.yellow
//        
//        // 3
//        let imageView = UIImageView(frame: CGRect(x: 0, y: 150, width: 40, height: 40))
//        imageView.contentMode = .scaleAspectFit
//        
//        // 4
//        let image = UIImage(named: "AppIcon")
//        imageView.image = image
//        
//        // 5
//        navigationItem.titleView = imageView
//    }
//    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        emailTF.tintColor = UIColor.init(named: "#F0BC08")
        emailTF.setIcon(UIImage(named:"icons_secured_letter")!)
        
        
        passwordTF.tintColor = UIColor.init(named: "#F0BC08")
        passwordTF.setIcon(UIImage(named: "icons_lock")!)
        
    }
    
    
    
    
    @IBAction func LoginBtn(_ sender: UIButton) {
        let url = URLS.loginUrl
        
        errorLable.text = ""
        guard let email = emailTF.text,!email.isEmpty, Validaton.isValidEmailAddress(emailAddressString: email) else{
            errorLable.text = "please enter correct email "
            return}
        guard let password = passwordTF.text,!password.isEmpty else{return}
        
        let parameters = [
            "email":email,
            "password":password
        ]
        
        Alamofire.request(url, method: .post, parameters: parameters).responseJSON {response in
            switch response.result {
            case .failure(let error):
                print(error)
                print("yu fail !")
            case .success(let value):
                print("yu success !")
                print(value)
                
                self.performSegue(withIdentifier: "GoToMainPage", sender: self)
            }
        }
       
    }
    
    @IBAction func RegisterBtn(_ sender: UIButton) {
        
    performSegue(withIdentifier: "goToRegister", sender: self)
        
    }
    
    
    @IBAction func SkipBtn(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil)
        let rootVc = vc.instantiateViewController(withIdentifier: "main")
        present(rootVc,animated: true,completion: nil)    }
    
}

