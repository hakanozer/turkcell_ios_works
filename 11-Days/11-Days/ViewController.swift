//
//  ViewController.swift
//  11-Days
//
//  Created by HAKAN ÖZER on 26.01.2021.
//
// 119, 462
// 177, 135

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var img: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtTitle.alpha = 0
        txtDetail.alpha = 0
        UIView.animate(withDuration: 0.4) {
            self.txtTitle.alpha = 1
        } completion: { (bool) in
            UIView.animate(withDuration: 0.4) {
                self.txtDetail.alpha = 1
            }
        }
        
        UIView.animate(withDuration: 0.6, delay: 0.8, options: [.curveEaseOut, .transitionFlipFromBottom], animations: {
            self.img.frame = CGRect(x: 119, y: 462, width: 177, height: 135)
        }, completion: nil)

    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        print(AppDelegate.notiStatus)
        
        if ( AppDelegate.notiStatus == false ) {
            let alert = UIAlertController(title: "Warning", message: "Notification Permission Error", preferredStyle: .alert)
            let gotoSettings = UIAlertAction(title: "Goto Settings", style: .default) { (action) in
                
                if let bundleIdentifier = Bundle.main.bundleIdentifier, let appSettings = URL(string: UIApplication.openSettingsURLString + bundleIdentifier) {
                    if UIApplication.shared.canOpenURL(appSettings) {
                        UIApplication.shared.open(appSettings)
                    }
                }

            }
            let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            alert.addAction(gotoSettings)
            alert.addAction(cancel)
            
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    
    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var txtDetail: UITextField!
    var timeNow: TimeInterval = 0
    @IBAction func fncChange(_ sender: UIDatePicker) {
        timeNow = sender.date.timeIntervalSinceNow
    }
    
    @IBAction func fncCreate(_ sender: UIButton) {
        
        if (AppDelegate.notiStatus == true) {
            
            let title = txtTitle.text!
            let detail = txtDetail.text!
            
            // content
            let content = UNMutableNotificationContent()
            content.title = title
            content.body = detail
            content.badge = 1
            
            // time
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: timeNow, repeats: false)
            
            // request
            let req = UNNotificationRequest(identifier: "remember_noti", content: content, trigger: trigger)
            
            // add
            UNUserNotificationCenter.current().add(req, withCompletionHandler: nil)
            
            
        }

        
    }
    


}

