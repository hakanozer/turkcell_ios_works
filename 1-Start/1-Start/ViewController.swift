//
//  ViewController.swift
//  1-Start
//
//  Created by HAKAN ÖZER on 29.12.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func fncDateSelect(_ sender: UIDatePicker) {
        print(sender.date)
    }


    @IBAction func fncSendData(_ sender: UIButton) {
        sender.backgroundColor = .red
        sender.frame = CGRect(x: 100, y: 100, width: 200, height: 100)
        print("fncSendData Call")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let x = ["ali", "veli", "hasan"]
        //let i = x[3]
        print("Hello Swift")
            
            
        
    }


}

