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
    
    @IBOutlet weak var mainStackView: UIStackView!

    @IBOutlet weak var lastLine: UIView!
    
    @IBOutlet weak var filterView: UIView!
    @IBOutlet weak var filterSelectView: UIView!
    
    @IBOutlet weak var selectionView1: UIView!
    @IBOutlet weak var selectionView2: UIView!
    @IBOutlet weak var selectionView3: UIView!

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
            titleLabel.sizeToFit()
        }
        if imageViewV != nil {
            self.imageViewV.image = UIImage(named: imageName)
        }
    }
    
    func configureExpand(_ title: String, title1: String, title2: String, imageName: String, row: Int, target: Any, selectors: [Selector]) {
        if self.titleLabel != nil {
            self.titleLabel.text = title
            titleLabel.sizeToFit()
        }
        if self.titleLabel1 != nil {
            self.titleLabel1.text = title1
            titleLabel1.sizeToFit()
        }
        if self.titleLabel2 != nil {
            self.titleLabel2.text = title2
            titleLabel2.sizeToFit()
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
    
    
    func configureCondition(_ title: String, isExapand: Bool, isSelected: Bool) {
        if self.titleLabel != nil {
            self.titleLabel.text = title
            if title.contains("<sup><small>")/*, let position = cellData.conditionTitle.firstIndex(of: "<") */ {
                titleLabel.attributedText = title.htmlToAttributedString(SystemFont.semiBold14)
                titleLabel.textAlignment = .left
//                titleLabel.font = UIFont.systemFont(ofSize: 14.0, weight: .semibold)
//                self.titleLabel.attributedText = Core.setProunceVal(title, position: position)
            }
            titleLabel.sizeToFit()
        }
        if imageViewV != nil {
            self.imageViewV.isHidden = !isExapand
        }
        if mainStackView != nil {
            mainStackView.backgroundColor = isSelected ? UIColor(hexString: "#D6E2DD") : .white
        }
    }
    
    func configureConditionFilter(_ cellData: ConditionsModel, target: Any, selectors: [Selector], row: Int) {
        if titleLabel != nil {
            titleLabel.text = cellData.conditionTitle
            if cellData.conditionTitle.contains("<sup><small>")/*, let position = cellData.conditionTitle.firstIndex(of: "<")*/ {
                titleLabel.attributedText = cellData.conditionTitle.htmlToAttributedString(SystemFont.semiBold14)
                titleLabel.textAlignment = .left
            }
            titleLabel.sizeToFit()
        }
        if button != nil {
            button.tag = row
            button.addTarget(target, action: selectors[0], for: .touchUpInside)
        }
        if button1 != nil {
            button1.tag = row
            button1.addTarget(target, action: selectors[1], for: .touchUpInside)
        }
        if filterView != nil {
            filterView.isHidden = cellData.isSelected
        }
        if filterSelectView != nil {
            filterSelectView.isHidden = !cellData.isSelected
        }
       
        if titleLabel1 != nil {
            titleLabel1.text = cellData.isSelected ? EligibilityList.ageLess40 : EligibilityList.ageLess18
            titleLabel1.sizeToFit()
        }
        if titleLabel2 != nil {
            titleLabel2.text = EligibilityList.ageLess18
            titleLabel2.sizeToFit()
        }
        if titleLabel3 != nil {
            titleLabel3.text = EligibilityList.ageLess40
            titleLabel3.sizeToFit()
        }
    }
    
    func configureConditionSelection(_ cellData: ConditionsModel, target: Any, selectors: [Selector], row: Int) {
        if titleLabel != nil {
            titleLabel.text = cellData.conditionTitle
            if cellData.conditionTitle.contains("<sup><small>") {
                titleLabel.attributedText = cellData.conditionTitle.htmlToAttributedString(SystemFont.semiBold14)
                titleLabel.textAlignment = .left
            }
            titleLabel.sizeToFit()
        }
        
        if selectionView1 != nil {
            selectionView1.isHidden = cellData.checkBoxContent.isEmpty
        }
        if selectionView2 != nil {
            selectionView2.isHidden = cellData.checkBoxContent2.isEmpty
        }
        if selectionView3 != nil {
            selectionView3.isHidden = cellData.checkBoxContent3.isEmpty
        }
        
        if titleLabel1 != nil {
            titleLabel1.text = cellData.checkBoxContent
            titleLabel1.sizeToFit()
        }
        if titleLabel2 != nil {
            titleLabel2.text = cellData.checkBoxContent2
            titleLabel2.sizeToFit()
        }
        if titleLabel3 != nil {
            titleLabel3.text = cellData.checkBoxContent3
            titleLabel3.sizeToFit()
        }
        
        if radioImg1 != nil {
            radioImg1.isHighlighted = cellData.isSelected
        }
        if radioImg2 != nil {
            radioImg2.isHighlighted = cellData.isSelected1
        }
        if radioImg3 != nil {
            radioImg3.isHighlighted = cellData.isSelected2
        }
        
        if button != nil {
            button.tag = row
            button.addTarget(target, action: selectors[0], for: .touchUpInside)
        }
        
        if button1 != nil {
            button1.tag = row
            button1.layer.setValue(0, forKey: "SelectedOptionIndex")
            button1.addTarget(target, action: selectors[1], for: .touchUpInside)
        }
        if button2 != nil {
            button2.tag = row
            button2.layer.setValue(1, forKey: "SelectedOptionIndex")
            button2.addTarget(target, action: selectors[1], for: .touchUpInside)
        }
        if button3 != nil {
            button3.tag = row
            button3.layer.setValue(2, forKey: "SelectedOptionIndex")
            button3.addTarget(target, action: selectors[1], for: .touchUpInside)
        }
    }
    
    func configurePreference(_ cellData: PreferencesModel, target: Any, selector: Selector, row: Int) {
        if self.titleLabel != nil {
            self.titleLabel.text = cellData.title
            titleLabel.sizeToFit()
        }
        if self.titleLabel1 != nil {
            self.titleLabel1.text = cellData.content
            titleLabel1.sizeToFit()
        }
        if imageViewV != nil {
            self.imageViewV.image = UIImage(named: cellData.icon)
        }
        if button != nil {
            button.tag = row
            button.addTarget(target, action: selector, for: .touchUpInside)
        }
    }
}
