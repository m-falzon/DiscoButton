//
//  ViewController.swift
//  DiscoButton
//
//  Created by Matthew Falzon on 14/05/2015.
//  Copyright (c) 2015 Matthew Falzon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var iteration:Int = 1

    @IBAction func changeColour(sender: AnyObject) {
        
        switch(self.iteration) {
        case 1:
            self.view.backgroundColor = self.convertRGBtoAppleRGB(253 , green: 230, blue: 189)
            self.iteration++
            
        case 2:
            self.view.backgroundColor = self.convertRGBtoAppleRGB(161 , green: 197, blue: 171)
            self.iteration++
            
        case 3:
            self.view.backgroundColor = self.convertRGBtoAppleRGB(244 , green: 221, blue: 81)
            self.iteration++
            
        case 4:
            self.view.backgroundColor = self.convertRGBtoAppleRGB(209 , green: 30, blue: 72)
            self.iteration++

        case 5:
            self.view.backgroundColor = self.convertRGBtoAppleRGB(99 , green: 47, blue: 83)
            self.iteration++

            
        default:
            self.view.backgroundColor = self.convertRGBtoAppleRGB(255 , green: 255, blue: 255)
            self.iteration = 1
        }
    }
    
    func convertRGBtoAppleRGB(red:Int, green:Int, blue:Int) -> UIColor {
        
        var newRed:CGFloat
        var newGreen:CGFloat
        var newBlue:CGFloat
        
        newRed = CGFloat(red)/255
        newGreen = CGFloat(green)/255
        newBlue = CGFloat(blue)/255
        
        return UIColor(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)

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

