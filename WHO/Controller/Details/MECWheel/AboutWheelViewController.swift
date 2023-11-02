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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        HeaderManager.addHeader(self, title: StringConstant.aboutTheWheel)

//        webView.loadHTMLString(StringConstant.about_description, baseURL: nil)
        webView.isHidden = true
        self.textView.attributedText = StringConstant.about_description.htmlToAttributedString
//        self.textView.font = UIFont(name: "Roboto-Regular", size: 16.0)
        self.lowerWheelImg.image = UIImage(named: StringConstant.lower_wheel)
        self.upperWheelImg.image = UIImage(named: StringConstant.upper_wheel)
        self.textView.backgroundColor = .white
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

}
