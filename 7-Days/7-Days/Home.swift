//
//  Home.swift
//  7-Days
//
//  Created by HAKAN ÖZER on 16.01.2021.
//

import UIKit
import SCLAlertView

class Home: UIViewController {
    
    @IBAction func fncAlertShow(_ sender: UIButton) {
        SCLAlertView().showInfo("Önemli Uyarı", subTitle: "Lütfen adınızı giriniz!")
        //SCLAlertView().showWait("Important info", subTitle: "You are great")
        /*
        SCLAlertView().showTitle(
            "Congratulations", // Title of view
            subTitle: "Operation successfully completed.", timeout: nil,
            completeText: "Done", // Optional button value, default: ""
            style: .success, // Styles - see below.
            colorStyle: 0xA429FF,
            colorTextButton: 0xFFFFFF
        )
         */
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Home viewDidLoad Call")
    }
    

    override func viewDidAppear(_ animated: Bool) {
        print("Home viewDidAppear Call")
    }

}
