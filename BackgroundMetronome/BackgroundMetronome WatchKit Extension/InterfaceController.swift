//
//  InterfaceController.swift
//  BackgroundMetronome WatchKit Extension
//
//  Created by Murage Kibicho on 26/08/2020.
//  Copyright © 2020 Murage Kibicho. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    var startString: String = "START"
    var startedCounting: Bool = false
    var count: Int = 0;
    var timer: Timer = Timer()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    //Outlets
    
    @IBOutlet weak var TapButtonCounterAdjsut: WKInterfaceButton!
    @IBOutlet weak var LabelCounterAdjust: WKInterfaceLabel!
    //Actions
    @IBAction func TapButtonPressed() {
        if(startedCounting){
            TapButtonCounterAdjsut.setTitle(startString)
            timer.invalidate()
            startedCounting = false

        }
        else if(!startedCounting){
            
            //start timer
            timer  = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimeCounter), userInfo: nil, repeats: true)
            startedCounting = true
        }
        }
    @objc func TimeCounter() -> Void {
        count += 1
        TapButtonCounterAdjsut.setTitle(String(count))
        
        
    }
}

