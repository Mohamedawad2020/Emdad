//
//  MoreVC.swift
//  Emdad
//
//  Created by creative on 24/09/1440 AH.
//  Copyright © 1440 creative. All rights reserved.
//

import UIKit

class MoreVC: UIViewController {

    @IBOutlet weak var termsAndConditionBtn: UIButton!
    
    @IBOutlet weak var aboutAppBtn: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func termsAndConditionsPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "TermsandConditionsSegue", sender: self)
        
    }
    
    @IBAction func aboutAppPressed(_ sender: Any) {
        performSegue(withIdentifier: "AboutAppSegue", sender: self)
        
    }
    
    @IBAction func contactUsPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "ContactUsSegue", sender: self)
    }
    
}
