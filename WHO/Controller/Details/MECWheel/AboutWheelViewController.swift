//
//  AboutWheelViewController.swift
//  WHO
//
//  Created by Durgesh on 17/10/23.
//

import UIKit
import WebKit

class AboutWheelViewController: UIViewController {
    
    @IBOutlet fileprivate weak var textView: UITextView!
    @IBOutlet fileprivate weak var lowerWheelImg: UIImageView!
    @IBOutlet fileprivate weak var upperWheelImg: UIImageView!
    @IBOutlet fileprivate weak var webView: WKWebView!
    
    var _startTransform = CGAffineTransform()
    var _prevPoint = CGPointZero
    var _deltaAngle = Float()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let _panGesture = UIPanGestureRecognizer(target: self, action: #selector(rotateItem(_:)))
        _panGesture.delegate = self
        self.view.addGestureRecognizer(_panGesture)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        HeaderManager.addHeader(self, title: StringConstant.aboutTheWheel)

//        webView.loadHTMLString(StringConstant.about_description, baseURL: nil)
        webView.isHidden = true
        self.textView.attributedText = StringConstant.about_description.htmlToAttributedString(SystemFont.regular16)
//        self.textView.font = UIFont(name: "Roboto-Regular", size: 16.0)
        self.lowerWheelImg.image = UIImage(named: StringConstant.lower_wheel)
        self.upperWheelImg.image = UIImage(named: StringConstant.upper_wheel)
        self.textView.backgroundColor = .white
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
}

extension AboutWheelViewController: UIGestureRecognizerDelegate {
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        _startTransform = self.lowerWheelImg.transform
        return true
    }
}

