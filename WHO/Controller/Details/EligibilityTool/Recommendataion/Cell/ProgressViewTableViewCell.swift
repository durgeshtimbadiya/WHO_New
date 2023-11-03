//
//  ProgressViewTableViewCell.swift
//  WHO
//
//  Created by Durgesh on 03/11/23.
//

import UIKit

class ProgressViewTableViewCell: UITableViewCell {
    static let identifier = "progressCell"

    @IBOutlet weak var progressBar1: KDCircularProgress!
    @IBOutlet weak var progImageView1: UIImageView!
    @IBOutlet weak var progTitleLabel1: UILabel!
    
    @IBOutlet weak var progressBar2: KDCircularProgress!
    @IBOutlet weak var progImageView2: UIImageView!
    @IBOutlet weak var progTitleLabel2: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var cellButton: UIButton!
    @IBOutlet weak var arrowImageView: UIImageView!
    @IBOutlet weak var expandView: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(_ cellData: ConditionProgressModel, target: Any, selector: Selector, row: Int, isSelected: Bool) {
        if expandView != nil {
            expandView.isHidden = !isSelected
        }
        if titleLabel != nil {
            titleLabel.text = cellData.progressTitle
            titleLabel.sizeToFit()
        }
        if subTitleLabel != nil {
            subTitleLabel.text = cellData.subTitle
            subTitleLabel.sizeToFit()
        }
        if descriptionLabel != nil {
            descriptionLabel.text = cellData.desc
            descriptionLabel.sizeToFit()
        }
        if arrowImageView != nil {
            arrowImageView.isHighlighted = isSelected
        }
        if cellButton != nil {
            cellButton.tag = row
            cellButton.addTarget(target, action: selector, for: .touchUpInside)
        }
        if progressBar1 != nil {
            progressBar1.glowMode = .noGlow
            progressBar1.gradientRotateSpeed = 5
            progressBar1.trackColor = Constants.grayColor
            var progressV = Double(cellData.progressValueF / 4.0)
            switch cellData.progressValueF {
            case 1:
                progressBar1.progressColors = [Constants.greenColor]
                break
            case 2:
                progressBar1.progressColors = [Constants.blueColor]
                break
            case 3:
                progressBar1.progressColors = [Constants.orangeColor]
                break
            case 4:
                progressBar1.progressColors = [Constants.redColor]
                break
            case 12:
                progressV = 0.5 // 2.0 / 4.0
                progressBar1.progressColors = [Constants.blueColor, Constants.lightBlueColor, Constants.greenColor]
                break
            case 23:
                progressV = 0.75 // 3.0 / 4.0
                progressBar1.progressColors = [Constants.orangeColor, Constants.blueColor, Constants.blueColor]
                break
            case 34:
                progressV = 1.0 // 4.0 / 4.0
                progressBar1.progressColors = [Constants.redColor, Constants.lightOrangeColor, Constants.orangeColor]
                break
            default:
                break
            }
            progressBar1.progress = progressV
            if !isSelected {
                progressBar1.animate(fromAngle: 0, toAngle: 360 * progressV, duration: 0.5) { completed in }
            }
        }
        
        if progressBar2 != nil {
            progressBar2.glowMode = .noGlow
            progressBar2.gradientRotateSpeed = 5
            progressBar2.trackColor = Constants.grayColor
            var progressV = Double(cellData.progressValueF / 4.0)
            switch cellData.progressValueF {
            case 1:
                progressBar2.progressColors = [Constants.greenColor]
                break
            case 2:
                progressBar2.progressColors = [Constants.blueColor]
                break
            case 3:
                progressBar2.progressColors = [Constants.orangeColor]
                break
            case 4:
                progressBar2.progressColors = [Constants.redColor]
                break
            case 12:
                progressV = 0.5 // 2.0 / 4.0
                progressBar2.progressColors = [Constants.blueColor, Constants.lightBlueColor, Constants.greenColor]
                break
            case 23:
                progressV = 0.75 // 3.0 / 4.0
                progressBar2.progressColors = [Constants.orangeColor, Constants.blueColor, Constants.blueColor]
                break
            case 34:
                progressV = 1.0 // 4.0 / 4.0
                progressBar2.progressColors = [Constants.redColor, Constants.lightOrangeColor, Constants.orangeColor]
                break
            default:
                break
            }
            progressBar2.progress = progressV
            progressBar2.animate(fromAngle: 0, toAngle: 360 * progressV, duration: 0.5) { completed in }
        }
        
        if progTitleLabel1 != nil {
            if cellData.isHTML {
                progTitleLabel1.attributedText = cellData.progressValS.htmlToAttributedString
                progTitleLabel1.textAlignment = .center
                progTitleLabel1.font = UIFont.boldSystemFont(ofSize: 15.0)
            } else {
                progTitleLabel1.text = cellData.progressValS
                if cellData.progressValS.contains("<sup><small>") {
                    progTitleLabel1.attributedText = cellData.progressValS.htmlToAttributedString
                    progTitleLabel1.textAlignment = .center
                    progTitleLabel1.font = UIFont.boldSystemFont(ofSize: 15.0)
                }
            }
            progTitleLabel1.sizeToFit()
        }
        
        if progTitleLabel2 != nil {
            if cellData.isHTML {
                progTitleLabel2.attributedText = cellData.progressValS.htmlToAttributedString
                progTitleLabel2.textAlignment = .center
                progTitleLabel2.font = UIFont.boldSystemFont(ofSize: 15.0)
            } else {
                progTitleLabel2.text = cellData.progressValS
                if cellData.progressValS.contains("<sup><small>") {
                    progTitleLabel2.attributedText = cellData.progressValS.htmlToAttributedString
                    progTitleLabel2.textAlignment = .center
                    progTitleLabel2.font = UIFont.boldSystemFont(ofSize: 15.0)
                }
            }
            progTitleLabel2.sizeToFit()
        }
    }
    
    func configureInfo(_ cellData: InformationModel) {
        if self.progressBar1 != nil {
            progressBar1.glowMode = .noGlow
            progressBar1.gradientRotateSpeed = 5
            progressBar1.trackColor = Constants.grayColor
            progressBar1.progress = Double(cellData.progressVal) / 4.0
            progressBar1.animate(fromAngle: 0, toAngle: 360 * (Double(cellData.progressVal) / 4.0), duration: 0.5) { completed in }
            switch  cellData.progressVal {
            case 1:
                progressBar1.progressColors = [Constants.greenColor]
                break
            case 2:
                progressBar1.progressColors = [Constants.blueColor]
                break
            case 3:
                progressBar1.progressColors = [Constants.orangeColor]
                break
            case 4:
                progressBar1.progressColors = [Constants.redColor]
                break
            default:
                break
            }
        }
        if progTitleLabel1 != nil {
            progTitleLabel1.text = "\(cellData.progressVal)"
            progTitleLabel1.sizeToFit()
        }
        if self.descriptionLabel != nil {
            self.descriptionLabel.text = cellData.text
            descriptionLabel.sizeToFit()
        }
    }

}
