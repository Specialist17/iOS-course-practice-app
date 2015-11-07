//
//  ViewController.swift
//  Hide The Bomb
//
//  Created by Fernando on 11/1/15.
//  Copyright © 2015 Fernando. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blue: UIImageView!
    @IBOutlet weak var red: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func hideBlue(sender: AnyObject) {
        blue.hidden = true
        red.hidden = false
    }
    @IBAction func hideRed(sender: AnyObject) {
    
        blue.hidden = false
        red.hidden = true
        
    }
    
    
    //Keeps the app GUI from rotating left or right
    override func shouldAutorotate() -> Bool {
        if (UIDevice.currentDevice().orientation == UIDeviceOrientation.LandscapeLeft ||
            UIDevice.currentDevice().orientation == UIDeviceOrientation.LandscapeRight ||
            UIDevice.currentDevice().orientation == UIDeviceOrientation.Unknown) {
                return false
        }
        else {
            return true
        }
    }
    
    //Permits the apps GUI to rotate vertically (regular vertical and upside down)
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return [UIInterfaceOrientationMask.Portrait ,UIInterfaceOrientationMask.PortraitUpsideDown]
    }


}

