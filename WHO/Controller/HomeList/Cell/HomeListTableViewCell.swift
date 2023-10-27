//
//  HomeListTableViewCell.swift
//  WHO
//
//  Created by Durgesh on 13/10/23.
//

import UIKit

class HomeListTableViewCell: UITableViewCell {
    
    static let identifier = "singleCell"
    static let expandIdentifier = "expandCell"
    static let expand1Identifier = "expand1Cell"

    @IBOutlet weak var imageViewV: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleLabel1: UILabel!
    @IBOutlet weak var titleLabel2: UILabel!
    @IBOutlet weak var titleLabel3: UILabel!

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var radioImg1: UIImageView!
    @IBOutlet weak var radioImg2: UIImageView!
    @IBOutlet weak var radioImg3: UIImageView!
    
    @IBOutlet weak var lastLine: UIView!
    @IBOutlet weak var leadingSliderConstraing: NSLayoutConstraint!
    @IBOutlet weak var trailingSliderConstraing: NSLayoutConstraint!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(_ title: String, imageName: String) {
        if self.titleLabel != nil {
            self.titleLabel.text = title
        }
        if imageViewV != nil {
            self.imageViewV.image = UIImage(named: imageName)
        }
    }
    
    func configureExpand(_ title: String, title1: String, title2: String, imageName: String, row: Int, target: Any, selectors: [Selector]) {
        if self.titleLabel != nil {
            self.titleLabel.text = title
        }
        if self.titleLabel1 != nil {
            self.titleLabel1.text = title1
        }
        if self.titleLabel2 != nil {
            self.titleLabel2.text = title2
        }
        if imageViewV != nil {
            self.imageViewV.image = UIImage(named: imageName)
        }
        if button != nil {
            button.tag = row
            button.addTarget(target, action: selectors[0], for: .touchUpInside)
        }
        if button1 != nil {
            button1.tag = 0
            button1.addTarget(target, action: selectors[1], for: .touchUpInside)
        }
        if button2 != nil {
            button2.tag = 1
            button2.addTarget(target, action: selectors[1], for: .touchUpInside)
        }
        if button3 != nil {
            button3.tag = 2
            button3.addTarget(target, action: selectors[1], for: .touchUpInside)
        }
    }
}
