//
//  ViewController.swift
//  Magic8Ball
//
//  Created by berk algul on 11.09.2017.
//  Copyright © 2017 Berk Algul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imageViewIndex : Int = 0
    var imageArray = ["ball1" , "ball2", "ball3", "ball4","ball5"]
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateTheBall(){
        
        imageViewIndex = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: imageArray[imageViewIndex])
    }
    
    @IBAction func askBtnPressed(_ sender: UIButton) {
        updateTheBall()
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateTheBall()
    }

}

