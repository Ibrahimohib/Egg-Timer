//
//  ViewController.swift
//  EggTimer2
//
//  Created by Mohib Ibrahim on 8/17/16.
//  Copyright © 2016 Mohib Ibrahim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var time = 210
    
    @IBAction func resetTimer(_ sender: AnyObject) {
        time = 210
        timerLabel.text = String(time)
    }
    @IBAction func play(_ sender: AnyObject) {
        timer = Timer.scheduledTimer(timeInterval:1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
        
    }
    @IBAction func pause(_ sender: AnyObject) {
        timer.invalidate()
    }
    @IBOutlet var timerLabel: UILabel!
    @IBAction func minusTen(_ sender: AnyObject) {
        if time > 10{
            time-=10
            timerLabel.text=String(time)
        }
    }
    @IBAction func plusTen(_ sender: AnyObject) {
        time+=10
        timerLabel.text = String(time)
    }
    
    func decreaseTimer(){
        if time > 0 {
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

