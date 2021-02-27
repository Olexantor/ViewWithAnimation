//
//  AnimationViewController.swift
//  ViewWithAnimation
//
//  Created by Александр on 25.02.2021.
//

import Spring

class AnimationViewController: UIViewController {

    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var runSpringAnimationButton: SpringButton!
    
    //MARK: Private Properties
    let animations = Animation.getInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func runSpringAnimationButtonPressed() {
        springAnimationView.animation = "pop"
        springAnimationView.curve = "easeIn"
        springAnimationView.force = 1
        springAnimationView.duration = 1
        springAnimationView.delay = 0.5
        springAnimationView.animate()
    }
    
    
}

