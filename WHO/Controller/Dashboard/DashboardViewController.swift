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
    
    var _startTransform = CGAffineTransform()
    var _prevPoint = CGPointZero
    var _deltaAngle = Float()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        descLabel.text = StringConstant.launchTagLine
        self.lowerWheelImg.image = UIImage(named: StringConstant.lower_wheel)
        self.upperWheelImg.image = UIImage(named: StringConstant.upper_wheel)

        let _panGesture = UIPanGestureRecognizer(target: self, action: #selector(rotateItem(_:)))
        _panGesture.delegate = self
        self.view.addGestureRecognizer(_panGesture)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        self.rotate2(imageView: self.lowerWheelImg, aCircleTime: 10.0)
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
    
    @objc func rotateItem(_ recognizer: UIPanGestureRecognizer) {
        let currPoint = recognizer.location(in: self.view)
        if let center = recognizer.view?.center {
            let ang = atan2f(Float(currPoint.y - center.y), Float(currPoint.x - center.x)) - atan2f(Float(_prevPoint.y - center.y), Float(_prevPoint.x - center.x))
            _prevPoint = recognizer.location(in: self.view)
            _deltaAngle += ang
            self.lowerWheelImg.transform = CGAffineTransformRotate(_startTransform, CGFloat(_deltaAngle))
        }
    }
    
    
//    /// Rotates An SCNNode Around It's YAxis
//    ///
//    /// - Parameter gesture: UIRotationGestureRecognizer
//    @objc func rotateNode(_ gesture: UIRotationGestureRecognizer){
//
//        //1. Get The Current Rotation From The Gesture
//        let rotation = Float(gesture.rotation)
//
//        //2. If The Gesture State Has Changed Set The Nodes EulerAngles.y
//        if gesture.state == .changed{
//            isRotating = true
//            self.lowerWheelImg.eu.eulerAngles.y = currentAngleY + rotation
//        }
//
//        //3. If The Gesture Has Ended Store The Last Angle Of The Cube
//        if(gesture.state == .ended) {
//            currentAngleY = currentNode.eulerAngles.y
//            isRotating = false
//        }
//    }

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

extension DashboardViewController: UIGestureRecognizerDelegate {
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        _startTransform = self.lowerWheelImg.transform
        return true
    }
}
