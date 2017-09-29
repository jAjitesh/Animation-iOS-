//
//  ViewController.swift
//  animatiion
//
//  Created by Ajitesh on 13/07/17.
//  Copyright © 2017 Ajitesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isAnimate = true
     var i = 1
    @IBOutlet weak var image: UIImageView!
    var timer = Timer()
    
    @IBAction func fadeIn(_ sender: Any) {
        image.alpha = 0
        UIView.animate(withDuration: 1, animations: {
            self.image.alpha = 1
        })
        
    }
    
    @IBAction func slideIn(_ sender: Any) {
        image.center = CGPoint(x: image.center.x - 500, y: image.center.y)
        UIView.animate(withDuration: 1, animations: {
        self.image.center = CGPoint(x: self.image.center.x + 500, y: self.image.center.y)
        })
    }
    
    @IBAction func grow(_ sender: Any) {
        image.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        UIView.animate(withDuration: 1, animations: {
            self.image.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        })
    }
    
    
    
    func animate() {
       
        image.image = UIImage(named: "frame_\(i)_delay-0.03s.gif")
        
        i += 1
        
        if i == 45 {
            i = 0
        }
    }
    
    @IBAction func button(_ sender: Any) {
        
    
        if isAnimate {
             timer = Timer.scheduledTimer(timeInterval: 0.03, target: self, selector: #selector(ViewController.animate), userInfo: nil, repeats: true)
            isAnimate = false
            
        } else {
            timer.invalidate()
            isAnimate = true
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

