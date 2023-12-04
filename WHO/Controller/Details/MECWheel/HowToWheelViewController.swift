//
//  HowToWheelViewController.swift
//  WHO
//
//  Created by Durgesh on 17/10/23.
//

import UIKit

class HowToWheelViewController: UIViewController {

    @IBOutlet fileprivate weak var tableView: UITableView!

    private var cellList = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        HeaderManager.addHeader(self, title: StringConstant.HowtoUsetheWheel)

        self.tableView.layer.cornerRadius = 25.0
        self.tableView.layer.masksToBounds = true
        self.tableView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        cellList.append(StringConstant.howtouse_1)
        cellList.append("")
        cellList.append(StringConstant.howtouse_2)
        cellList.append(StringConstant.howtouse_3)
        cellList.append(StringConstant.howtouse_4)
        cellList.append(StringConstant.howtouse_5)
        cellList.append(StringConstant.howtouse_6)
        self.tableView.backgroundColor = .white
        self.tableView.reloadData()
    }
}

extension HowToWheelViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: indexPath.row == 1 ? CustomTableViewCell.wheelCell : CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell {
            
            if cell.subTitleLabel != nil {
//                cell.subTitleLabel.font = UIFont(name: "Roboto-Regular", size: 15.0)
                cell.subTitleLabel.attributedText = cellList[indexPath.row].htmlToAttributedString(SystemFont.regular16)
                cell.subTitleLabel.backgroundColor = .white
//                cell.subTitleLabel.textColor = .black
            }
            if cell.titleLabel != nil {
                cell.titleLabel.isHidden = false
                cell.titleLabel.textColor = .white
//                cell.titleLabel.font = UIFont(name: "Roboto-Black", size: 15.0)
                switch indexPath.row {
                case 2:
                    cell.titleLabel.text = "1=\(StringConstant.yes)"
                    cell.titleLabel.backgroundColor = UIColor(hexString: "#80B942")
                    if cell.subTitleLabel != nil {
                        cell.subTitleLabel.textColor = UIColor(hexString: "#80B942")
                    }
                    break
                case 3:
                    cell.titleLabel.text = "2=\(StringConstant.yes)"
                    cell.titleLabel.backgroundColor = UIColor(hexString: "#376CB2")
                    if cell.subTitleLabel != nil {
                        cell.subTitleLabel.textColor = UIColor(hexString: "#376CB2")
                    }
                    break
                case 4:
                    cell.titleLabel.text = "3=\(StringConstant.no)"
                    cell.titleLabel.backgroundColor = UIColor(hexString: "#F0822E")
                    if cell.subTitleLabel != nil {
                        cell.subTitleLabel.textColor = UIColor(hexString: "#F0822E")
                    }
                    break
                case 5:
                    cell.titleLabel.text = "4=\(StringConstant.no)"
                    cell.titleLabel.backgroundColor = UIColor(hexString: "#D02027")
                    if cell.subTitleLabel != nil {
                        cell.subTitleLabel.textColor = UIColor(hexString: "#D02027")
                    }
                    break
                default:
                    cell.titleLabel.isHidden = true
                    break
                }
            }
            
            return cell
        }
        return UITableViewCell()
    }
}

extension HowToWheelViewController: UITableViewDelegate {
    
}
