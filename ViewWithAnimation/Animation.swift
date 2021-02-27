//
//  Animation.swift
//  ViewWithAnimation
//
//  Created by Александр on 27.02.2021.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
}

extension Animation {
    static func getInfo() -> [Animation] {
        var animations: [Animation] = []
        
        let presets = DataManager.shared.presets
        let curves = DataManager.shared.curves
        let forces = DataManager.shared.forces
        let durations = DataManager.shared.durations
        let delays = DataManager.shared.delays
        
        for _ in 0..<presets.count {
            let animation = Animation(
                preset: presets[(Int.random(in: 0..<presets.count))],
                curve: curves[(Int.random(in: 0..<curves.count))],
                force: forces[(Int.random(in: 0..<forces.count))],
                duration: durations[(Int.random(in: 0..<durations.count))],
                delay: delays[(Int.random(in: 0..<delays.count))]
            )
            animations.append(animation)
        }
        return animations
    }
}
