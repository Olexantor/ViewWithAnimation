//
//  DataManager.swift
//  ViewWithAnimation
//
//  Created by Александр on 27.02.2021.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    let presets = ["shake", "pop", "morph", "squeeze", "wobble", "swing"]
    
    let curves = ["easeIn",
                  "easeOut",
                  "linear", "spring", "easeInQuart", "easeInOutBack"]
    
    let forces = [0.5, 0.7, 0.9, 1.1, 1.3, 1.5]
    
    let durations = [0.5, 0.8, 1.0, 1.2, 1.4, 1.6]
    
    let delays = [0.5, 0.6, 0.7, 0.8, 0.9, 1.0]
    
    private init() {}
}
