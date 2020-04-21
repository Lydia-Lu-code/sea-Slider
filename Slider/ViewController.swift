//
//  ViewController.swift
//  Slider
//
//  Created by 維衣 on 2020/4/19.
//  Copyright © 2020 Lydia-L. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var sunbye: UIImageView!
    @IBOutlet weak var moonbye: UIImageView!
    @IBOutlet weak var squidbye: UIImageView!
    @IBOutlet weak var nightout: UIImageView!
    @IBOutlet weak var viewwave: UIImageView!
    
    
//    var squidCenter = CGPoint()
    var sunCenter = CGPoint()
    var moonCenter = CGPoint()
    var viewCenter = CGPoint()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        sunCenter = sunbye.center
        moonCenter = moonbye.center
        viewCenter = viewwave.center
    
    }

    @IBAction func slider(_ sender: UISlider) {
        
        let speed = sender.value * 20.0
        
       
        squidbye.frame.origin.y = CGFloat(135 + speed * 0.42)

        nightout.alpha = CGFloat(sender.value/20)
        nightout.frame.origin.y = CGFloat(375 - speed)
        
        

        let radian = Double(5)*Double.pi/180
        
        sunbye.center = CGPoint(x: Double(viewCenter.x)+25 + 240*cos(radian*Double(sender.value)), y: Double(viewCenter.y) - 240*sin(radian*Double(sender.value)))
        sunbye.frame.origin.y = CGFloat(180 - speed)
        
        moonbye.center = CGPoint(x: Double(viewCenter.x)+60 + 240*cos(radian*0.6*Double(sender.value)), y: Double(viewCenter.y) - 220*sin(radian*0.65*Double(sender.value)))
        moonbye.frame.origin.y = CGFloat(450 - speed)
    }
    
}

