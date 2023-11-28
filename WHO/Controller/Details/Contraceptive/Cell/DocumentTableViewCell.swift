//
//  DocumentTableViewCell.swift
//  WHO
//
//  Created by Durgesh on 03/11/23.
//

import UIKit

class DocumentTableViewCell: UITableViewCell {
    static let identifier = "cellIdentifier"
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var dotLabel: UILabel!
    @IBOutlet weak var dotDescLabel: UILabel!
    @IBOutlet weak var titleSubTView: UIStackView!
    @IBOutlet weak var dotDescView: UIStackView!
    @IBOutlet weak var seprateLineView: UIView!
    @IBOutlet weak var imageViewV: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(_ cellData: ContraceptualContentModel, row: Int) {
        if dotDescView != nil {
            dotDescView.isHidden = !cellData.bullet
        }
        if titleSubTView != nil {
            titleSubTView.isHidden = cellData.bullet
        }
        if titleLabel != nil {
            titleLabel.text = cellData.title
            titleLabel.sizeToFit()
            titleLabel.isHidden = cellData.title.isEmpty
        }
        if subTitleLabel != nil {
            subTitleLabel.text = cellData.content.localizeString()
            subTitleLabel.sizeToFit()
            subTitleLabel.isHidden = cellData.content.isEmpty
        }
        if dotDescLabel != nil {
            dotDescLabel.text = cellData.content
            dotDescLabel.sizeToFit()
            dotDescLabel.isHidden = cellData.content.isEmpty
        }
        if seprateLineView != nil {
            seprateLineView.isHidden = row != 2 && row != 1
        }
    }
    
    func configureCont(_ cellData: ContraceptualChoicesModel) {
        if imageViewV != nil && !cellData.image.isEmpty {
            imageViewV.image = UIImage(named: cellData.image)
        }
        if titleLabel != nil {
            titleLabel.text = cellData.title
            titleLabel.sizeToFit()
        }
    }
}
