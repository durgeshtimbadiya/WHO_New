//
//  ConditionsTableViewCell.swift
//  WHO
//
//  Created by Durgesh on 25/10/23.
//

import UIKit

class ConditionsTableViewCell: UITableViewCell {
    static let singleCell = "singleCell"
    static let expandCell = "expandCell"
    static let textCell = "textCell"
    static let addListCell = "addListCell"
    static let expandAddCell = "expandAddCell"
    static let expandAntiCell = "expandAntiCell"
    static let addSubCell = "addSubCell"
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var imageViewV: UIImageView!
    @IBOutlet weak var cellButton: UIButton!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var dotLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tableViewHeight: NSLayoutConstraint!
    
    private var pointsList = [PointValueModel]()
    private var descriptionList = [String]()
    private var isDescription = false
    private var isLastRow = false

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(_ cellData: ConditionNoteModel, target: Any, selector: Selector, row: Int, isLast: Bool) {
        isLastRow = isLast
        if titleLabel != nil {
            titleLabel.text = cellData.title
            titleLabel.sizeToFit()
        }
        if subTitleLabel != nil {
            subTitleLabel.isHidden = true
            subTitleLabel.sizeToFit()
        }
        if descLabel != nil {
            descLabel.text = cellData.description
            descLabel.sizeToFit()
        }
        if cellButton != nil {
            cellButton.tag = row
            cellButton.addTarget(target, action: selector, for: .touchUpInside)
        }
        if imageViewV != nil {
            imageViewV.image = UIImage(named: cellData.image)
        }
        if tableView != nil {
            isDescription = true
            descriptionList = cellData.descList
            self.tableView.reloadData()
            self.tableView.alwaysBounceVertical = false
            self.tableView.alwaysBounceHorizontal = false
            
            if tableViewHeight != nil {
                tableViewHeight.constant = self.tableView.contentSize.height
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                self.tableView.reloadData()
            }
        }
    }
    
    func configureAdditional(_ cellData: AdditionalModel) {
        if titleLabel != nil {
            titleLabel.text = cellData.title
            titleLabel.sizeToFit()
        }
        if subTitleLabel != nil {
            subTitleLabel.isHidden = true
            subTitleLabel.sizeToFit()
        }
        if descLabel != nil {
            descLabel.text = cellData.description
            descLabel.sizeToFit()
        }
    }
    
    func configureAddSub(_ cellData: AdditionalSubModel, target: Any, selector: Selector, row: Int) {
        if titleLabel != nil {
            titleLabel.text = cellData.title
            titleLabel.sizeToFit()
        }
        if subTitleLabel != nil {
            subTitleLabel.isHidden = cellData.description.isEmpty
            subTitleLabel.text = cellData.description
            subTitleLabel.sizeToFit()
        }
        if descLabel != nil {
            descLabel.text = cellData.description
            if cellData.description.contains("<sup><small>"){
                descLabel.attributedText = cellData.description.htmlToAttributedString(SystemFont.regular13)
                descLabel.textAlignment = .left
            }
            descLabel.sizeToFit()
        }
        if cellButton != nil {
            cellButton.tag = row
            cellButton.addTarget(target, action: selector, for: .touchUpInside)
        }
        if imageViewV != nil {
            imageViewV.isHidden = true
        }
        if tableViewHeight != nil {
            tableViewHeight.constant = 587.0
        }
        if tableView != nil {
            isDescription = false
            self.pointsList = cellData.list
            self.tableView.reloadData()
            self.tableView.alwaysBounceVertical = false
            self.tableView.alwaysBounceHorizontal = false
            
            if tableViewHeight != nil {
                tableViewHeight.constant = self.tableView.contentSize.height
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
                self.tableView.reloadData()
            }
        }
        self.updateConstraints()
        self.layoutIfNeeded()
    }
    
    func configurePoint(_ cellData: PointValueModel) {
        if titleLabel != nil {
            titleLabel.text = cellData.point
            if cellData.point.contains("<sup><small>"){
                titleLabel.attributedText = cellData.point.htmlToAttributedString(SystemFont.regular14)
                titleLabel.textAlignment = .left
            }
            titleLabel.sizeToFit()
        }
        if descLabel != nil {
            descLabel.text = cellData.value
            descLabel.sizeToFit()
        }
    }
    
    func configureDescription(_ cellData: String) {
        if descLabel != nil {
            descLabel.text = cellData
            descLabel.sizeToFit()
        }
    }
}

extension ConditionsTableViewCell: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isDescription ? self.descriptionList.count : self.pointsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: ConditionsTableViewCell.addSubCell, for: indexPath) as? ConditionsTableViewCell {
            if isDescription {
                cell.configureDescription(self.descriptionList[indexPath.row])
                if cell.dotLabel != nil {
                    cell.dotLabel.isHidden = isLastRow
                }
            } else {
                cell.configurePoint(self.pointsList[indexPath.row])
            }
            return cell
        }
        return UITableViewCell()
    }
}
