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
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tableViewHeight: NSLayoutConstraint!
    
    private var pointsList = [PointValueModel]()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(_ cellData: ConditionNoteModel, target: Any, selector: Selector, row: Int) {
        if titleLabel != nil {
            titleLabel.text = cellData.title
        }
        if subTitleLabel != nil {
            subTitleLabel.isHidden = true
        }
        if descLabel != nil {
            descLabel.text = cellData.description
        }
        if cellButton != nil {
            cellButton.tag = row
            cellButton.addTarget(target, action: selector, for: .touchUpInside)
        }
        if imageViewV != nil {
            imageViewV.image = UIImage(named: cellData.image)
        }
    }
    
    func configureAdditional(_ cellData: AdditionalModel) {
        if titleLabel != nil {
            titleLabel.text = cellData.title
        }
        if subTitleLabel != nil {
            subTitleLabel.isHidden = true
        }
        if descLabel != nil {
            descLabel.text = cellData.description
        }
    }
    
    func configureAddSub(_ cellData: AdditionalSubModel, target: Any, selector: Selector, row: Int) {
        if titleLabel != nil {
            titleLabel.text = cellData.title
        }
        if subTitleLabel != nil {
            subTitleLabel.isHidden = cellData.description.isEmpty
            subTitleLabel.text = cellData.description
        }
        if descLabel != nil {
            descLabel.text = cellData.description
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
            self.pointsList = cellData.list
            self.tableView.reloadData()
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
            titleLabel.sizeToFit()
        }
        if descLabel != nil {
            descLabel.text = cellData.value
            descLabel.sizeToFit()
        }
    }
}

extension ConditionsTableViewCell: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.pointsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: ConditionsTableViewCell.addSubCell, for: indexPath) as? ConditionsTableViewCell {
            cell.configurePoint(self.pointsList[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}
