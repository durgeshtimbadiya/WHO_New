//
//  HomeListViewController.swift
//  WHO
//
//  Created by Durgesh on 13/10/23.
//

import UIKit
import MessageUI

class HomeListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    
    struct CellData {
        var title = ""
        var title1 = ""
        var title2 = ""
        var imageName = ""
        var isExpand = false
    }
    
    private var cellList = [CellData]()
    private let titleList = [StringConstant.india_adapted_MEC, StringConstant.EligibilityTool, StringConstant.ContraceptiveChoices, StringConstant.Conditions, StringConstant.AdditionalInfo, StringConstant.Feedback]
    private let imageNames = ["MEC_ic", "EligibilityTool_ic", "Contra_ic", "Conditions_ic", "Add_Info_ic", "Feedback_ic"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        for i in 0..<titleList.count {
            if i == 0 {
                self.cellList.append(CellData(title: titleList[i], title1: StringConstant.aboutTheWheel, title2: StringConstant.HowtoUsetheWheel, imageName: imageNames[i]))
            } else {
                self.cellList.append(CellData(title: titleList[i], imageName: imageNames[i]))
            }
        }
        self.tableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        HeaderManager.addHeader(self, title: StringConstant.shortTagLine, isOptionShow: false, topConstraint: self.topConstraint)
    }
    
    @objc func tapOnSection(_ sender: UIButton) {
        self.cellList[0].isExpand = !self.cellList[0].isExpand
        self.tableView.reloadData()
    }
    
    @objc func tapOnRow(_ sender: UIButton) {
        if sender.tag == 0 {
            if let myObject = Storyboard.details.instantiateViewController(withIdentifier: AboutWheelViewController().className) as? AboutWheelViewController {
                self.navigationController?.pushViewController(myObject, animated: true)
            }
        } else if sender.tag == 1 {
            if let myObject = Storyboard.details.instantiateViewController(withIdentifier: HowToWheelViewController().className) as? HowToWheelViewController {
                self.navigationController?.pushViewController(myObject, animated: true)
            }
        }
    }
}

extension HomeListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellData = cellList[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellData.isExpand ? HomeListTableViewCell.expandIdentifier : HomeListTableViewCell.identifier, for: indexPath) as? HomeListTableViewCell {
            if cellData.isExpand {
                cell.configureExpand(cellData.title, title1: cellData.title1, title2: cellData.title2, imageName: cellData.imageName, row: indexPath.row, target: self, selectors: [#selector(tapOnSection(_:)), #selector(tapOnRow(_:))])
            } else {
                cell.configure(cellData.title, imageName: cellData.imageName)
            }
            return cell
        }
        return UITableViewCell()
    }
}

extension HomeListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.cellList[indexPath.row].isExpand = !self.cellList[indexPath.row].isExpand
            self.tableView.reloadData()
            break
        case 1:
            break
        case 2:
            break
        case 3, 4:
            if let myObject = Storyboard.details.instantiateViewController(withIdentifier: ConditionsListViewController().className) as? ConditionsListViewController {
                myObject.isConditions = indexPath.row == 3
                self.navigationController?.pushViewController(myObject, animated: true)
            }
            break
        case 5:
            let email = "studio@fountainheadsolution.com"
            if let url = URL(string: "mailto:\(email)") {
              if #available(iOS 10.0, *) {
                UIApplication.shared.open(url)
              } else {
                UIApplication.shared.openURL(url)
              }
            } else {
                showToast(message: "Please enable mail from settings!")
            }
            break
        default:
            break
        }
    }
    
    private func feedback() {
        
        let composeVC = MFMailComposeViewController()
        composeVC.mailComposeDelegate = self

        // Configure the fields of the interface.
        composeVC.setToRecipients(["studio@fountainheadsolution.com"])
        composeVC.setSubject("")
        composeVC.setMessageBody("", isHTML: false)

        // Present the view controller modally.
        self.present(composeVC, animated: true, completion: nil)
    }
}

//MARK: MFMail Compose ViewController
extension HomeListViewController: MFMailComposeViewControllerDelegate {
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
}
