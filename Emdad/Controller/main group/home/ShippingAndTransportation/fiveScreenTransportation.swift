//
//  fiveScreenTransportation.swift
//  Emdad
//
//  Created by creative on 23/09/1440 AH.
//  Copyright © 1440 creative. All rights reserved.
//

import UIKit
import DLRadioButton

class fiveScreenTransportation: UIViewController {

    @IBOutlet weak var progress: UIView!
    @IBOutlet weak var progressView: UIView!
    
    @IBOutlet weak var Btn: DLRadioButton!
    
    
    @IBAction func BtnRadioAction(_ sender: DLRadioButton) {
        
        if sender.tag == 1 {
            print("one")
            /// do something
        } else if sender.tag == 2 {
            print("two")
            /// do something
        } else if sender.tag == 3 {
            print("three")
            /// do something
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
progress.frame.size.width = (progressView.frame.size.width / 5) * CGFloat(5)
       
    }
    
    
    
    
    
    @IBAction func send_RequestBtn(_ sender: UIButton) {
        /// do something
        
        
    }
    
    @IBAction func previousBtn(_ sender: UIButton) {
    performSegue(withIdentifier: "fiveScreenTransportationBack", sender: self)
    }
    


}
