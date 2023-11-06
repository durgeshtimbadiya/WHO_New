//
//  EConditionCollectionViewCell.swift
//  WHO
//
//  Created by Durgesh on 02/11/23.
//

import UIKit

class EConditionCollectionViewCell: UICollectionViewCell {
    static let identifier = "progressCell"
    
    @IBOutlet weak var progressBar: KDCircularProgress!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var imageViewV: UIImageView!
    
    func configure(_ cellData: ConditionProgressModel) {
        if titleLabel != nil {
            titleLabel.text = cellData.progressTitle
        }
        if progressBar != nil {
            progressBar.glowMode = .noGlow
            progressBar.gradientRotateSpeed = 5
            progressBar.trackColor = Constants.grayColor
            var progressV = Double(cellData.progressValueF / 4.0)
            switch cellData.progressValueF {
            case 1:
                progressBar.progressColors = [Constants.greenColor]
                // max 4
                break
            case 2:
                progressBar.progressColors = [Constants.blueColor]
                // max 4
                break
            case 3:
                progressBar.progressColors = [Constants.orangeColor]
                break
            case 4:
                progressBar.progressColors = [Constants.redColor]
                break
            case 12:
                progressV = 0.5 // 2.0 / 4.0
                progressBar.progressColors = [Constants.blueColor, Constants.lightBlueColor, Constants.greenColor]
                break
            case 23:
                progressV = 0.75 // 3.0 / 4.0
                progressBar.progressColors = [Constants.orangeColor, Constants.blueColor, Constants.blueColor]
                break
            case 34:
                progressV = 1.0 // 4.0 / 4.0
                progressBar.progressColors = [Constants.redColor, Constants.lightOrangeColor, Constants.orangeColor]
                break
            default:
                break
            }
            progressBar.progress = progressV
            progressBar.animate(fromAngle: 0, toAngle: 360 * progressV, duration: 0.5) { completed in }
        }
        if subtitleLabel != nil {
            if cellData.isHTML {
                subtitleLabel.attributedText = "<strong>\(cellData.progressValS)</strong>".htmlToAttributedString(SystemFont.bold15)
                subtitleLabel.textAlignment = .center
//                subtitleLabel.font = UIFont.boldSystemFont(ofSize: 15.0)
            } else {
                subtitleLabel.text = cellData.progressValS
                if cellData.progressValS.contains("<sup><small>") /*, let position = cellData.progressValS.firstIndex(of: "<")*/ {
//                    subtitleLabel.attributedText = cellData.progressValS.htmlToAttributedString
                    subtitleLabel.attributedText = "<strong>\(cellData.progressValS)</strong>".htmlToAttributedString(SystemFont.bold15)
                    subtitleLabel.textAlignment = .center
//                    subtitleLabel.font = UIFont.boldSystemFont(ofSize: 15.0)
//                    self.subtitleLabel.attributedText = Core.setProunceVal(cellData.progressValS, position: position)
                }
            }
        }
    }
}
