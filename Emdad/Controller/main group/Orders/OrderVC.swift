//
//  OrderVC.swift
//  Emdad
//
//  Created by arab devolpers on 6/8/19.
//  Copyright © 2019 creative. All rights reserved.
//

import UIKit

class OrderVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    var data = [
    ["ahmed","omar","mohamed"],
    ["awad","farag","sobhy"],
    ["awad","farag","sobhy"],
    ["awad","farag","sobhy"]
    ]
    
    @IBOutlet weak var ordersTableView: UITableView!
    var indexP: Int!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let nib = UINib(nibName: "Customcell", bundle: nil)
        
        
      ordersTableView.register(nib, forCellReuseIdentifier: "customeCell")
        indexP = 0
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return data[indexP].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customeCell") as! Customcell

//
        cell.layoutMargins.bottom = 10
        cell.layoutMargins.left = 10
        cell.layoutMargins.right = 10
        let str = data[indexP][indexPath.row]

        var array = [String]()
        for st in data[indexP] {
//            print(st)
        array.append(st)

    }
        cell.customInit(type: array[0], description: array[1], orderTime: array[2])
        return cell
        
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    @IBAction func switchTableViewAction(_ sender: UISegmentedControl) {
        
        indexP = sender.selectedSegmentIndex
        ordersTableView.reloadData()
    }
}
