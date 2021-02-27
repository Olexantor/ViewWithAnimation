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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func runSpringAnimationButtonPressed() {
    }
    
    
}

