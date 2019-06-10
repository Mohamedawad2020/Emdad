//
//  firstTransportationVC.swift
//  Emdad
//
//  Created by creative on 19/09/1440 AH.
//  Copyright © 1440 creative. All rights reserved.
//

import UIKit

class firstTransportationVC: UIViewController {

    @IBOutlet weak var progressView: UIView!
    
    @IBOutlet weak var progress: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
progress.frame.size.width = (progressView.frame.size.width / 5) * CGFloat(1)


    }
    
    @IBAction func firstNextBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "secendScreenToTransportation", sender: self)
    }
    

}
