//
//  AnimationViewController.swift
//  ViewWithAnimation
//
//  Created by Александр on 25.02.2021.
//

import Spring

class AnimationViewController: UIViewController {

    //MARK: IB Outlets
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var springAnimationDescriptionLabel: UILabel!
    @IBOutlet var runSpringAnimationButton: SpringButton!
    
    //MARK: Private Properties
    let animations = Animation.getInfo()
    var nextAnimation: Animation! = nil
    
    //MARK: IB Actions
    @IBAction func runSpringAnimationButtonPressed() {
        showAnimation()
        printAnimationText()
    }
    //MARK: Private Methods
    private func showAnimation() {
        
        var currentAnimation = animations.randomElement()!
        
        if nextAnimation != nil {
            currentAnimation = nextAnimation
        }
        
        springAnimationView.animation = currentAnimation.preset
        springAnimationView.curve = currentAnimation.curve
        springAnimationView.force = CGFloat(currentAnimation.force)
        springAnimationView.duration = CGFloat(currentAnimation.duration)
        springAnimationView.delay = CGFloat(currentAnimation.delay)
        springAnimationView.animate()
        
        nextAnimation = animations.randomElement()
        runSpringAnimationButton.setTitle("Run \(nextAnimation.preset)", for: .normal)
    }
    
    private func printAnimationText() {
        springAnimationDescriptionLabel.text = """
        preset: \(springAnimationView.animation)
        curve: \(springAnimationView.curve)
        force: \(springAnimationView.force)
        duration: \(springAnimationView.duration)
        delay: \(springAnimationView.delay)
        """
    }
    
}

