//
//  ViewController.swift
//  13-1-Days
//
//  Created by HAKAN ÖZER on 30.01.2021.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    let animation = Animation.named("splash")
    let animationView = AnimationView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)
        
        Timer.scheduledTimer(withTimeInterval: 10.0, repeats: false) { (timer) in
            self.performSegue(withIdentifier: "dashboard", sender: nil)
        }
        
    }


}

