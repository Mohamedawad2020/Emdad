//
//  FourthTransportationScreen.swift
//  Emdad
//
//  Created by creative on 21/09/1440 AH.
//  Copyright © 1440 creative. All rights reserved.
//

import UIKit

class FourthTransportationScreen: UIViewController {

    @IBOutlet weak var progress: UIView!
    @IBOutlet weak var progressView: UIView!
    @IBOutlet weak var valueOfLoadTF: UITextField!
    @IBOutlet weak var loadWEightTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progress.frame.size.width = (progressView.frame.size.width / 5) * CGFloat(4)
        set_uitextField_Icons()
        
    }
    
    func set_uitextField_Icons(){
        valueOfLoadTF.setIcon(UIImage(named: "dollar")!)
        loadWEightTF.setIcon(UIImage(named: "weight")!)
    }
    
    @IBAction func nextBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "fiveScreenTransportation", sender: self)
    }
    
    @IBAction func previousBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "goBackToThirdscreenTransport", sender: self)
    }
}
