//
//  EffectivenessTableViewCell.swift
//  WHO
//
//  Created by Durgesh on 25/10/23.
//

import UIKit

class EffectivenessTableViewCell: UITableViewCell {
    static let identifier = "effectiveCell"
    static let identifier1 = "effectiveCell1"
    

    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView4: UIImageView!
    
    @IBOutlet weak var imagePerc1: UILabel!
    @IBOutlet weak var imagePerc2: UILabel!
    @IBOutlet weak var imagePerc3: UILabel!
    @IBOutlet weak var imagePerc4: UILabel!
    
    @IBOutlet weak var imageTitle1: UILabel!
    @IBOutlet weak var imageTitle2: UILabel!
    @IBOutlet weak var imageTitle3: UILabel!
    @IBOutlet weak var imageTitle4: UILabel!

    @IBOutlet weak var contentLabel1: UILabel!
    @IBOutlet weak var contentLabel2: UILabel!
    @IBOutlet weak var contentLabel3: UILabel!
    @IBOutlet weak var contentLabel4: UILabel!
    
    @IBOutlet weak var contentStkView1: UIStackView!
    @IBOutlet weak var contentStkView2: UIStackView!
    @IBOutlet weak var contentStkView3: UIStackView!
    @IBOutlet weak var contentStkView4: UIStackView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(_ cellData: EffectivenessModel) {
        if imageView1 != nil {
            imageView1.image = UIImage(named: cellData.image1)
        }
        if imageView2 != nil {
            imageView2.image = UIImage(named: cellData.image2)
        }
        if imageView3 != nil {
            imageView3.image = UIImage(named: cellData.image3)
        }
        if imageView4 != nil {
            imageView4.image = UIImage(named: cellData.image4)
        }
        
        if imagePerc1 != nil {
            imagePerc1.text = cellData.imagePerc1
            imagePerc1.sizeToFit()
        }
        if imagePerc2 != nil {
            imagePerc2.text = cellData.imagePerc2
            imagePerc3.sizeToFit()
        }
        if imagePerc3 != nil {
            imagePerc3.text = cellData.imagePerc3
            imagePerc3.sizeToFit()
        }
        if imagePerc4 != nil {
            imagePerc4.text = cellData.imagePerc4
            imagePerc4.sizeToFit()
        }
        
        if imageTitle1 != nil {
            imageTitle1.text = cellData.imageTitle1
            imageTitle1.sizeToFit()
        }
        if imageTitle2 != nil {
            imageTitle2.text = cellData.imageTitle2
            imageTitle2.sizeToFit()
        }
        if imageTitle3 != nil {
            imageTitle3.text = cellData.imageTitle3
            imageTitle3.sizeToFit()
        }
        if imageTitle4 != nil {
            imageTitle4.text = cellData.imageTitle4
            imageTitle4.sizeToFit()
        }
        
        if contentLabel1 != nil {
            let attributeStr = NSMutableAttributedString(string: cellData.content1)
            let boldAttributes = [ NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 14.0) ]
            let titleComp = cellData.content1.components(separatedBy: ":")
            let rangeTitle1 = NSRange(location: 0, length: titleComp[0].count + 1)
            attributeStr.addAttributes(boldAttributes as [NSAttributedString.Key : Any], range: rangeTitle1)

            contentLabel1.attributedText = attributeStr
            contentLabel1.sizeToFit()
        }
        
        if contentLabel2 != nil {
            contentLabel2.isHidden = cellData.content2.isEmpty
            if contentStkView2 != nil {
                contentStkView2.isHidden = cellData.content2.isEmpty
            }
            if !cellData.content2.isEmpty {
                let attributeStr = NSMutableAttributedString(string: cellData.content2)
                let boldAttributes = [ NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 14.0) ]
                let titleComp = cellData.content2.components(separatedBy: ":")
                let rangeTitle1 = NSRange(location: 0, length: titleComp.count > 0 ? titleComp[0].count + 1 : 0)
                attributeStr.addAttributes(boldAttributes as [NSAttributedString.Key : Any], range: rangeTitle1)

                contentLabel2.attributedText = attributeStr
                contentLabel2.sizeToFit()
            }
        }
        if contentLabel3 != nil {
            contentLabel3.isHidden = cellData.content3.isEmpty
            if contentStkView3 != nil {
                contentStkView3.isHidden = cellData.content3.isEmpty
            }
            if !cellData.content3.isEmpty {
                let attributeStr = NSMutableAttributedString(string: cellData.content3)
                let boldAttributes = [ NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 14.0) ]
                let titleComp = cellData.content3.components(separatedBy: ":")
                let rangeTitle1 = NSRange(location: 0, length: titleComp.count > 0 ? titleComp[0].count + 1 : 0)
                attributeStr.addAttributes(boldAttributes as [NSAttributedString.Key : Any], range: rangeTitle1)
                
                contentLabel3.attributedText = attributeStr
                contentLabel3.sizeToFit()
            }
        }
        if contentLabel4 != nil {
            contentLabel4.isHidden = cellData.content4.isEmpty
            if contentStkView4 != nil {
                contentStkView4.isHidden = cellData.content4.isEmpty
            }
            if !cellData.content4.isEmpty {
                let attributeStr = NSMutableAttributedString(string: cellData.content4)
                let boldAttributes = [ NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 14.0) ]
                let titleComp = cellData.content4.components(separatedBy: ":")
                let rangeTitle1 = NSRange(location: 0, length: titleComp.count > 0 ? titleComp[0].count + 1 : 0)
                attributeStr.addAttributes(boldAttributes as [NSAttributedString.Key : Any], range: rangeTitle1)
                
                contentLabel4.attributedText = attributeStr
                contentLabel4.sizeToFit()
            }
        }
    }

}
