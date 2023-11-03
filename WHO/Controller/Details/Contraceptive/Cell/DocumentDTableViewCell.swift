//
//  DocumentDTableViewCell.swift
//  WHO
//
//  Created by Durgesh on 03/11/23.
//

import UIKit

class DocumentDTableViewCell: UITableViewCell {
    
    static let identifer = "firstCell"
    
    @IBOutlet weak var issueMainView: UIStackView!
    
    @IBOutlet weak var issueView1: UIStackView!
    @IBOutlet weak var issueImage1: UIImageView!
    @IBOutlet weak var issueContent1: UILabel!
    
    @IBOutlet weak var issueView2: UIStackView!
    @IBOutlet weak var issueImage2: UIImageView!
    @IBOutlet weak var issueContent2: UILabel!
    
    @IBOutlet weak var issueView3: UIStackView!
    @IBOutlet weak var issueImage3: UIImageView!
    @IBOutlet weak var issueContent3: UILabel!
    
    @IBOutlet weak var progressMainView: UIView!
    @IBOutlet weak var progress1Content: UILabel!
    @IBOutlet weak var progress2Content: UILabel!
    @IBOutlet weak var progressTitle: UILabel!
    @IBOutlet weak var progressBar: KDCircularProgress!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(_ cellData: ContraceptualChoicesModel) {
        if progressBar != nil && !cellData.progresscontent {
                progressBar.glowMode = .noGlow
            progressBar.gradientRotateSpeed = 5
            progressBar.trackColor = Constants.grayColor
            progressBar.roundedCorners = false
            progressBar.progressColors = [Constants.primaryColor]
            progressBar.progress = Double(cellData.progressPercent) / 100.0
            progressBar.animate(fromAngle: 0, toAngle: 360 * (Double(cellData.progressPercent) / 100.0), duration: 0.5) { completed in }
        }
        if progressMainView != nil {
            progressMainView.isHidden = cellData.progresscontent
        }
        if progressTitle != nil {
            progressTitle.text = "\(cellData.progressPercent)%"
        }
        if progress1Content != nil {
            progress1Content.text = cellData.progressTitle
            progress1Content.sizeToFit()
        }
        if progress2Content != nil {
            progress2Content.isHidden = !cellData.progresscontent
            progress2Content.attributedText = cellData.progressVal.htmlToAttributedString
            progress2Content.textAlignment = .left
            progress2Content.font = UIFont.systemFont(ofSize: 14.0)
            progress2Content.sizeToFit()
        }
        
    
        if issueView2 != nil {
            issueView2.isHidden = cellData.layoutParams == 3
        }
        if issueView3 != nil {
            issueView3.isHidden = cellData.layoutParams != 9
        }
        
        if issueImage1 != nil && !cellData.issueImg1.isEmpty {
            issueImage1.image = UIImage(named: cellData.issueImg1)
        }
        if issueImage2 != nil && !cellData.issueImg2.isEmpty {
            issueImage2.image = UIImage(named: cellData.issueImg2)
        }
        if issueImage3 != nil && !cellData.issueImg3.isEmpty {
            issueImage3.image = UIImage(named: cellData.issueImg3)
        }
        
        if issueContent1 != nil {
            issueContent1.text = cellData.issueName1
            issueContent1.sizeToFit()
        }
        if issueContent2 != nil {
            issueContent2.text = cellData.issueName2
            issueContent2.sizeToFit()
        }
        if issueContent3 != nil {
            issueContent3.text = cellData.issueName3
            issueContent2.sizeToFit()
        }
    }

}
