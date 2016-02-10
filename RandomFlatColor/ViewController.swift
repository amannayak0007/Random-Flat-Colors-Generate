//
//  ViewController.swift
//  RandomFlatColor
//
//  Created by aman jain on 10/02/16.
//  Copyright © 2016 aman jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func Generate(sender: AnyObject) {
   
     self.view.backgroundColor = UIColor.randomFlatColor()
        print("Colors start generating")
    
    }

    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }

}


typealias ColorTuple = (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
extension UIColor {
    class func randomFlatColor() -> UIColor {
        struct RandomColors {
            static let colors: Array<ColorTuple> = [
                
                //Flat Colors
                (red:0.91, green:0.29, blue:0.36, alpha:1.0),
                (red:0.22, green:0.42, blue:0.78, alpha:1.0),
                (red:0.21, green:0.70, blue:0.99, alpha:1.0),
                (red:0.51, green:0.14, blue:0.84, alpha:1.0),
                (red:0.09, green:0.98, blue:0.78, alpha:1.0),
                (red: 0.8471, green: 0.4392, blue: 0.6784, alpha: 1.0),
                (red:0.21, green:0.22, blue:0.40, alpha:1.0),
                (red: 0.9294, green: 0.4588, blue: 0.3843, alpha: 1.0),
                (red:0.22, green:0.41, blue:0.78, alpha:1.0),
                (red: 0.9882, green: 0.8941, blue: 0.4824, alpha: 1.0),
                (red:1.00, green:0.67, blue:0.42, alpha:1.0),
                (red:1.00, green:0.45, blue:0.33, alpha:1.0),
                (red:0.69, green:0.92, blue:0.95, alpha:1.0),
                (red:0.53, green:0.42, blue:0.60, alpha:1.0)
                
            ]
            
        }
        
        let colorCount = UInt32(RandomColors.colors.count)
        let randomIndex = arc4random_uniform(colorCount)
        let color = RandomColors.colors[Int(randomIndex)]
        
        return UIColor(red: color.red, green: color.green, blue: color.blue, alpha: color.alpha)
    }
}
