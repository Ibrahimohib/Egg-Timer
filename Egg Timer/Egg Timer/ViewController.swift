//
//  ViewController.swift
//  Egg Timer
//
//  Created by Mohib Ibrahim on 8/17/16.
//  Copyright © 2016 Mohib Ibrahim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var time = 210
    
    @IBOutlet var timerLabel: UILabel!
    func decreaseTimer(){
        if time > 0{
            time -= 1
            timerLabel.text = String(time)
        }
        else {
            timer.invalidate()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

