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

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
        if self.upperWheelImg != nil {
            self.upperWheelImg.image = UIImage(named: StringConstant.upper_wheel)
            
        }
        if self.lowerWheelImg != nil {
            self.rotate2(imageView: self.lowerWheelImg, aCircleTime: 10.0)
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func rotate2(imageView: UIImageView, aCircleTime: Double) { //UIView
        UIView.animate(withDuration: aCircleTime/2, delay: 0.0, options: .curveLinear, animations: {
//            print(CGFloat(Double.pi))
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
