//
//  SecendTransportationVC.swift
//  Emdad
//
//  Created by creative on 21/09/1440 AH.
//  Copyright © 1440 creative. All rights reserved.
//

import UIKit
import FlagPhoneNumber
import iOSDropDown
class SecendTransportationVC: UIViewController {
    
    
    @IBOutlet weak var progressview: UIView!
    
    @IBOutlet weak var progress: UIView!
    
    
    
    @IBOutlet weak var phoneNumberTF: FPNTextField!
    
    @IBOutlet weak var company_nameTF: UITextField!
    
    @IBOutlet weak var responsible_personTF: UITextField!
    
    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var sender_truck_numberTF: UITextField!
    
    @IBOutlet weak var countryTF: UITextField!
    
    @IBOutlet weak var cityTF: DropDown!
    @IBOutlet weak var locationTF: UITextField!
    
    @IBOutlet weak var timeTF: UITextField!
    @IBOutlet weak var dateTF: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()
       progress.frame.size.width = (progressview.frame.size.width / 5) * CGFloat(2)
        phoneNumberSettings()
        set_TextField_icon()
        
        
    }
    func set_TextField_icon(){
        company_nameTF.setIcon(UIImage(named: "companyName")!)
        responsible_personTF.setIcon(UIImage(named: "account")!)
        emailTF.setIcon(UIImage(named: "icons_secured_letter")!)
        sender_truck_numberTF.setIcon(UIImage(named: "hashtag")!)
        countryTF.setIcon(UIImage(named: "flag")!)
        cityTF.setIcon(UIImage(named: "placeholder")!)
        
        locationTF.setIconLocation(UIImage(named: "placeholder")!)
        locationTF.tintColor = UIColor.init(named: "#F0BC08")

    }
    
    
    
    func phoneNumberSettings(){
    
    /// phone number textfield using flagPhoneNumber pod
    phoneNumberTF.setFlag(for: .FR)
    phoneNumberTF.delegate = self
    phoneNumberTF.flagSize = CGSize(width: 25, height: 25)
    phoneNumberTF.flagButtonEdgeInsets = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
    phoneNumberTF.parentViewController = self
    phoneNumberTF.flagButton.isUserInteractionEnabled = true
    }
    
    
    @IBAction func previousBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "goBackToFisrtScreen", sender: self)
    }
    
    
    @IBAction func nextBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "goToThirdScreenOfTransport", sender: self)
    }
    
    

}

/// flag phone number delegate to textField
extension SecendTransportationVC : FPNTextFieldDelegate{
    func fpnDidSelectCountry(name: String, dialCode: String, code: String) {
        
    }
    
    func fpnDidValidatePhoneNumber(textField: FPNTextField, isValid: Bool) {
        
    }
    
    
}
