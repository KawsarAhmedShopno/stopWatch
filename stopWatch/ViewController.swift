//
//  ViewController.swift
//  stop
//
//  Created by kawsar on 23/7/19.
//  Copyright © 2019 kawsar. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var StartStopButton: UIButton!
    
    var timer:Timer?
    var isset=false
    var counter=0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    
    @objc func UpdateTimerLabel(){
        counter+=0.1
        timerLabel.text=String(counter)
        
    }
    
    @IBAction func StartStopTouch(_ sender: UIButton) {
        if isset{
            
        }else{
            timer=Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(UpdateTimerLabel), userInfo: nil, repeats: true)
            
            isset=true
            StartStopButton.setTitle("Stop",for: .normal)
        }
        
        @IBAction func resetDidTouch(_ sender: UIButton) {
            counter=0.0
            timerLabel.text="0.0"
            if isset{
                timer?.invalidate()
                StartStopButton.setTitle("Start",for:.normal)
                isset=false
            }
        }
    }
}
