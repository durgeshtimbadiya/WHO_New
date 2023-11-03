//
//  RecommendationViewController.swift
//  WHO
//
//  Created by Durgesh on 03/11/23.
//

import UIKit

class RecommendationViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var recommedationList = [ConditionProgressModel]()
    private var selectedIndexs = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.titleLabel.text = Recommendation.title
        self.subTitleLabel.text = Recommendation.subTitle
        self.backButton.setTitle(Recommendation.backToCondition, for: .normal)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func tapOnBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func tapOnInfoButton(_ sender: UIButton) {
        if let myObject = Storyboard.details.instantiateViewController(withIdentifier: InformationProgressViewController().className) as? InformationProgressViewController {
            self.navigationController?.present(myObject, animated: true)
        }
    }
    
    @objc func tapOnDocument(_ sender: UIButton) {
        if let choiceModel = self.recommedationList[sender.tag].contraceptualChoicesModel, let myObject = Storyboard.details.instantiateViewController(withIdentifier: DocumentViewController().className) as? DocumentViewController {
            myObject.contracChoiceData = choiceModel
            self.navigationController?.pushViewController(myObject, animated: true)
        } else {
            Toast.show(Recommendation.warningMessage)
        }
    }
}

extension RecommendationViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recommedationList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: ProgressViewTableViewCell.identifier, for: indexPath) as? ProgressViewTableViewCell {
            cell.configure(self.recommedationList[indexPath.row], target: self, selector: #selector(tapOnDocument(_:)), row: indexPath.row, isSelected: selectedIndexs.contains(where: { $0 == indexPath.row }))
            return cell
        }
        return UITableViewCell()
    }
}

extension RecommendationViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if selectedIndexs.contains(where: { $0 == indexPath.row }) {
             selectedIndexs.removeAll(where: { $0 == indexPath.row })
        } else {
            selectedIndexs.append(indexPath.row)
        }
        self.tableView.reloadRows(at: [indexPath], with: .none)
    }
}
