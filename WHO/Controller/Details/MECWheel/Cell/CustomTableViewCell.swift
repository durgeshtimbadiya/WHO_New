//
//  CustomTableViewCell.swift
//  WHO
//
//  Created by Durgesh on 17/10/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    static let identifier = "textCell"
    static let wheelCell = "wheelCell"
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var lowerWheelImg: UIImageView!
    @IBOutlet weak var upperWheelImg: UIImageView!
    
    var _startTransform = CGAffineTransform()
    var _prevPoint = CGPointZero
    var _deltaAngle = Float()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
        if self.upperWheelImg != nil {
            self.upperWheelImg.image = UIImage(named: StringConstant.upper_wheel)
            
        }
        if self.lowerWheelImg != nil {
            let _panGesture = UIPanGestureRecognizer(target: self, action: #selector(rotateItem(_:)))
            self.addGestureRecognizer(_panGesture)
            //_startTransform = self.lowerWheelImg.transform
            _startTransform = CGAffineTransform(a: 1.0, b: 0.0, c: 0.0, d: 1.0, tx: 0.0, ty: 0.0)

            self.lowerWheelImg.transform = CGAffineTransformRotate(_startTransform, CGFloat(1.7797605991363525))
//            self.rotate2(imageView: self.lowerWheelImg, aCircleTime: 10.0)
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
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
        let currPoint = recognizer.location(in: self)
        if let center = recognizer.view?.center {
            let ang = atan2f(Float(currPoint.y - center.y), Float(currPoint.x - center.x)) - atan2f(Float(_prevPoint.y - center.y), Float(_prevPoint.x - center.x))
            _prevPoint = recognizer.location(in: self)
            _deltaAngle += ang
                        print(_startTransform)
                        print(CGFloat(_deltaAngle))
            self.lowerWheelImg.transform = CGAffineTransformRotate(_startTransform, CGFloat(_deltaAngle))
        }
    }
    
}


//extension CustomTableViewCell: UIGestureRecognizerDelegate {
//    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
//        _startTransform = self.lowerWheelImg.transform
//        return true
//    }
//}

