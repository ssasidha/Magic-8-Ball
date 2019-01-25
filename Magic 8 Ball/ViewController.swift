//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Shashank Sasidharan on 1/24/19.
//  Copyright © 2019 Shashank Sasidharan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newBallImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage() {
        
        let randomBallNumber = Int.random(in: 1 ... 5)
        imageView.image = UIImage(named: "ball\(randomBallNumber)")
        
    }
    
}

