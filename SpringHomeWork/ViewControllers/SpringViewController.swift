//
//  ViewController.swift
//  SpringHomeWork
//
//  Created by Alena Belenets on 04.08.2022.
//

import UIKit
import SpringAnimation

class SpringViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var animationParameters: UILabel! {
        didSet {
            animationParameters.text = animation.description
        }
    }

    // MARK: - Private Properties
    private var animation = Animation.getRandomAnimation()

    // MARK: - IB Actions
    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        animationParameters.text = animation.description

        springAnimationView.animation = animation.name
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        springAnimationView.curve = animation.curve
        springAnimationView.animate()

        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }

}

