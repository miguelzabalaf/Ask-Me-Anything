//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ballIUIImageView: UIImageView!
    
    let countOfBalls = 5

    var ballArray: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getBallArray()
    }
    
    func getBallArray() {
        for idx in stride(from: 0, to: countOfBalls, by: 1) {
            ballArray.append(UIImage(imageLiteralResourceName: "ball\(idx + 1)"))
        }
    }
    
    func setRandomBall() {
        if let randomBall = ballArray.randomElement() {
            ballIUIImageView.image = randomBall
        } else {
            print("Cannot get a random element from [ballArray]")
        }
    }
    

    @IBAction func onPressAskMeButton() {
        setRandomBall()
    }
    
}

