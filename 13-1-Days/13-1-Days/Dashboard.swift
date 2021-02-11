//
//  Dashboard.swift
//  13-1-Days
//
//  Created by HAKAN ÖZER on 30.01.2021.
//

import UIKit

class Dashboard: UIViewController {

    
    @IBOutlet weak var lblData: UILabel!
    @IBOutlet weak var txtData: UITextField!
    @IBAction func btnData(_ sender: UIButton) {
        
        let dt = txtData.text!
        UserDefaults.standard.setValue(dt, forKey: "userData")

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        print(path)
        
        // UserData Denetimi
        if let data = UserDefaults.standard.string(forKey: "userData") {
            lblData.text = data
        }
        
    }
    
}
