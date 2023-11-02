//
//  DashboardViewController.swift
//  WHO
//
//  Created by Durgesh on 13/10/23.
//

import UIKit

class DashboardViewController: UIViewController {
    
    @IBOutlet weak var lowerWheelImg: UIImageView!
    @IBOutlet weak var upperWheelImg: UIImageView!
    @IBOutlet weak var descLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        descLabel.text = StringConstant.launchTagLine
        self.lowerWheelImg.image = UIImage(named: StringConstant.lower_wheel)
        self.upperWheelImg.image = UIImage(named: StringConstant.upper_wheel)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.rotate2(imageView: self.lowerWheelImg, aCircleTime: 10.0)
    }
    
    func rotate2(imageView: UIImageView, aCircleTime: Double) { //UIView
        UIView.animate(withDuration: aCircleTime/2, delay: 0.0, options: .curveLinear, animations: {
            imageView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
        }, completion: { finished in
            UIView.animate(withDuration: aCircleTime/2, delay: 0.0, options: .curveLinear, animations: {
                imageView.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi*2))
            }, completion: { finished in
                self.rotate2(imageView: imageView, aCircleTime: aCircleTime)
            })
        })
    }

//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        if let touch = touches.first {
//            // do something with your currentPoint
//
//            let currentLocation = touch.location(in: touch.view)
//            let pastLocation = Float(touch.location(in: self.view).x)
//        }
//    }
    
    @IBAction func tapOnLanguage(_ sender: UIButton) {
        if let myObject = Storyboard.dashboard.instantiateViewController(withIdentifier: "LanguageViewController") as? LanguageViewController {
            self.navigationController?.pushViewController(myObject, animated: true)
        }
    }
    
    @IBAction func tapOnStart(_ sender: UIButton) {
        if let myObject = Storyboard.dashboard.instantiateViewController(withIdentifier: "HomeListViewController") as? HomeListViewController {
            self.navigationController?.pushViewController(myObject, animated: true)
        }
    }
}
