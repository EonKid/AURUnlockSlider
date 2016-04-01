//
//  ViewController.swift
//  AURUnlockSlider
//
//  Created by aminaura on 04/01/2016.
//  Copyright (c) 2016 aminaura. All rights reserved.
//

import UIKit
import AURUnlockSlider

class ViewController: UIViewController, AURUnlockSliderDelegate {

    private let unlockSlider:AURUnlockSlider = AURUnlockSlider(frame: CGRectMake(0.0, 0.0, 10.0, 10.0))
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let backImage = UIImageView()
        backImage.frame = self.view.frame
        backImage.image = UIImage(named: "background.jpg")
        self.view.addSubview(backImage)
        
        unlockSlider.delegate = self
        unlockSlider.frame = CGRectMake(0.0, 0.0, self.view.bounds.size.width * 0.8, 80.0)
        unlockSlider.center = CGPointMake(self.view.bounds.size.width * 0.5, self.view.bounds.size.height * 0.5)
        
        unlockSlider.sliderText = "> Slide to Unlock"
        unlockSlider.sliderTextFont = UIFont(name: "HelveticaNeue-Thin", size: 20.0)!
        unlockSlider.sliderBackgroundColor = UIColor(red: 231/255, green: 232/255, blue: 226/255, alpha: 0.5)
        self.view.addSubview(unlockSlider)
    }
    
    func unlockSliderDidUnlock(snapSwitch: AURUnlockSlider) {
        print("Unlock")
    }
    
}


