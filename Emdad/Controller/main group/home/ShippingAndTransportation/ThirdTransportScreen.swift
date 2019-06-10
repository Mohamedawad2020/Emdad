//
//  ThirdTransportScreen.swift
//  Emdad
//
//  Created by creative on 21/09/1440 AH.
//  Copyright © 1440 creative. All rights reserved.
//

import UIKit
import FlagPhoneNumber
import iOSDropDown

class ThirdTransportScreen: UIViewController {

    @IBOutlet weak var progressView: UIView!
    
    
    @IBOutlet weak var progress: UIView!
    
    
    @IBOutlet weak var phoneNumberTF: FPNTextField!
    
    @IBOutlet weak var companyName: UITextField!
    
    @IBOutlet weak var responsiblePersonTF: UITextField!
    
    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var shippingNumberTF: UITextField!
    
    @IBOutlet weak var countryTF: UITextField!
    
    @IBOutlet weak var downLoadCityTF: DropDown!
    
    @IBOutlet weak var locationTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progress.frame.size.width = (progressView.frame.size.width / 5) * CGFloat(3)
        phoneNumberSettings()
        set_uitextfield_icons()
        
    }
    func set_uitextfield_icons() {
        companyName.setIcon(UIImage(named: "companyName")!)
        responsiblePersonTF.setIcon(UIImage(named: "account")!)
        emailTF.setIcon(UIImage(named: "icons_secured_letter")!)
        shippingNumberTF.setIcon(UIImage(named: "hashtag")!)
        countryTF.setIcon(UIImage(named: "flag")!)
        downLoadCityTF.setIcon(UIImage(named: "placeholder")!)
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
    
    
    
    
    
    
    @IBAction func nextBtnPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToFourthScreenTransport", sender: self)
    }
    
    @IBAction func previousBtnPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goBackToSecendScreenTransport", sender: self)
    }
    
}
extension ThirdTransportScreen : FPNTextFieldDelegate {
    func fpnDidSelectCountry(name: String, dialCode: String, code: String) {
        
    }
    
    func fpnDidValidatePhoneNumber(textField: FPNTextField, isValid: Bool) {
        
    }
    
    
}
