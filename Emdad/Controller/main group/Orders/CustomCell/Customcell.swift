//
//  Customcell.swift
//  Emdad
//
//  Created by arab devolpers on 6/8/19.
//  Copyright © 2019 creative. All rights reserved.
//

import UIKit

class Customcell: UITableViewCell {

   
    @IBOutlet weak var serviceTypeLb: UILabel!
    
    @IBOutlet weak var serviceDescriptionLb: UILabel!
    @IBOutlet weak var serviceTimeLb: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }
    
    func customInit(type:String,description:String,orderTime:String){
        self.serviceTypeLb.text = type
        self.serviceDescriptionLb.text = description
        self.serviceTimeLb.text = orderTime
    }
    
    
}
