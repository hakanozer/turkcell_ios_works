//
//  Settings.swift
//  3-Days
//
//  Created by HAKAN ÖZER on 7.01.2021.
//

import Foundation

class Settings {
    
    var name = ""
    var number = 0
    
    init() {
        
    }
    
    init( name:String, number:Int ) {
        self.name = name
        self.number = number
    }
    
    func call()  {
        print("Data : ", name, " " , number)
    }
    
}
