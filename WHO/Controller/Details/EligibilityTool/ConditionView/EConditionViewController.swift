//
//  EConditionViewController.swift
//  WHO
//
//  Created by Durgesh on 02/11/23.
//

import UIKit

class EConditionViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var bottomSheetView: UIView!
    @IBOutlet weak var contPreferenceButton: UIButton!
    @IBOutlet weak var seeRecomndButton: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    
    private var conditionList = ContentManager.shared.eConditionsList
    private var searchDataList = [ConditionsModel]()
    private var selectedProgress = [ConditionProgressModel]()
    
    private struct SelectedData {
        var index = -1
        var title = ""
        var selectedIndex = -1
    }
    private var selectedList = [ConditionsModel]()
    var containerVCC: ContainerViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.bottomSheetView.isHidden = true
        self.searchDataList = self.conditionList
//        containerView.layer.masksToBounds = true
//        containerView.layer.cornerRadius = 25.0
//        containerView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.contPreferenceButton.setTitle(ConditionList.continuePrefBtn, for: .normal)
        self.seeRecomndButton.setTitle(ConditionList.seeRecomButton, for: .normal)
    }
    
    @IBAction func tapOnConPreference(_ sender: UIButton) {
        self.containerVCC?.scrollMenuViewSelectedIndex(1)
    }
    
    @IBAction func tapOnSeeRecommandation(_ sender: UIButton) {
        if let myObject = Storyboard.details.instantiateViewController(withIdentifier: RecommendationViewController().className) as? RecommendationViewController {
            myObject.recommedationList = self.selectedProgress
            self.navigationController?.pushViewController(myObject, animated: true)
        }
    }
    
    @objc func tapOnRow(_ sender: UIButton) {
        self.conditionList[sender.tag].selectedPos = -1
        if let index = self.selectedList.firstIndex(where: { $0.conditionTitle == self.conditionList[sender.tag].conditionTitle }) {
            self.conditionList[sender.tag].isSelected = false
            self.conditionList[sender.tag].isSelected1 = false
            self.conditionList[sender.tag].isSelected2 = false
            self.conditionList[sender.tag].options = ""
            self.selectedList.remove(at: index)
        }
        self.tableView.reloadRows(at: [IndexPath(row: sender.tag, section: 0)], with: .none)
    }
   
    @objc func tapOnFilter(_ sender: UIButton) {
        self.conditionList[sender.tag].isSelected = !self.conditionList[sender.tag].isSelected
        self.conditionList[sender.tag].age = self.conditionList[sender.tag].isSelected ? "40" : "18"
        self.tableView.reloadRows(at: [IndexPath(row: sender.tag, section: 0)], with: .none)
        openBottomSheet(sender.tag)
    }
    
    @objc func tapOnOptions(_ sender: UIButton) {
        if let selectedInd = sender.layer.value(forKey: "SelectedOptionIndex") as? Int {
            self.conditionList[sender.tag].isSelected = selectedInd == 0
            self.conditionList[sender.tag].isSelected1 = selectedInd == 1
            self.conditionList[sender.tag].isSelected2 = selectedInd == 2
            self.conditionList[sender.tag].options = selectedInd == 0 ? "A" : (selectedInd == 1 ? "B" : "C")
            
            if !self.selectedList.contains(where: { $0.conditionTitle == self.conditionList[sender.tag].conditionTitle }) {
                self.addIntoSelected(sender.tag)
            }
        }
        self.tableView.reloadRows(at: [IndexPath(row: sender.tag, section: 0)], with: .none)
        openBottomSheet(sender.tag)
    }
    
    private func addIntoSelected(_ rowIndex: Int) {
        //Need to remove duplicate
        self.selectedList.append(self.conditionList[rowIndex])
    }
    
    func searchData(with search: String) {
        if !search.isEmpty {
            conditionList = ContentManager.shared.eConditionsList.filter({ (object) -> Bool in
                return object.conditionTitle.range(of: search, options: .caseInsensitive) != nil
            })
        } else {
            conditionList = ContentManager.shared.eConditionsList
        }
        for select in self.selectedList {
            if let index = self.conditionList.firstIndex(where: { $0.conditionTitle == select.conditionTitle }) {
                self.conditionList[index] = select
            }
        }
        self.tableView.reloadData()
    }
    
    private func openBottomSheet(_ indexRow: Int) {
        self.bottomSheetView.isHidden = false
        if self.conditionList[indexRow].conditionTitle == EligibilityList.age3_1 {
            if let ageL = Int(self.conditionList[indexRow].age), ageL >= 40 {
                self.selectedProgress = self.conditionList[indexRow].list1
            } else {
                self.selectedProgress = self.conditionList[indexRow].list
            }
        } else {
            switch self.conditionList[indexRow].options {
            case "B":
                self.selectedProgress = self.conditionList[indexRow].list1
                break
            case "C":
                self.selectedProgress = self.conditionList[indexRow].list2
                break
            default:
                self.selectedProgress = self.conditionList[indexRow].list
                break
            }
        }
        self.collectionView.reloadData()
    }
}

extension EConditionViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return conditionList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellData = conditionList[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellData.selectedPos != -1 ? (cellData.subViewType == 1 ? HomeListTableViewCell.expand1Identifier : HomeListTableViewCell.expandIdentifier ): HomeListTableViewCell.identifier, for: indexPath) as? HomeListTableViewCell {
            if cellData.selectedPos != -1 && cellData.subViewType == 1 {
                cell.configureConditionFilter(cellData, target: self, selectors: [#selector(tapOnRow(_:)), #selector(tapOnFilter(_:))], row: indexPath.row)
            } else if cellData.selectedPos != -1 && cellData.subViewType == 2 {
                cell.configureConditionSelection(cellData, target: self, selectors: [#selector(tapOnRow(_:)), #selector(tapOnOptions(_:))], row: indexPath.row)
            } else {
                cell.configureCondition(cellData.conditionTitle, isExapand: cellData.isArrow, isSelected: cellData.isSelected0)
            }
            return cell
        }
        return UITableViewCell()
    }
}

extension EConditionViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if self.conditionList[indexPath.row].isArrow {
            self.conditionList[indexPath.row].selectedPos = indexPath.row
            if indexPath.row == 0 {
                self.conditionList[indexPath.row].age = self.conditionList[indexPath.row].isSelected ? "40" : "18"
            }
            self.tableView.reloadRows(at: [indexPath], with: .none)
        } else {
            if self.selectedList.count > 2 {
                Toast.show(ConditionList.warningECondMessage)
                return
            }
            if !self.conditionList[indexPath.row].isSelected0 {
                self.conditionList[indexPath.row].isSelected0 = !self.conditionList[indexPath.row].isSelected0
                openBottomSheet(indexPath.row)
            } else if let index = self.selectedList.firstIndex(where: { $0.conditionTitle == self.conditionList[indexPath.row].conditionTitle }) {
                self.selectedList.remove(at: index)
            }
            self.conditionList[indexPath.row].isSelected0 = !self.conditionList[indexPath.row].isSelected0
            self.tableView.reloadRows(at: [indexPath], with: .none)
        }
    }
}

extension EConditionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.selectedProgress.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EConditionCollectionViewCell.identifier, for: indexPath) as? EConditionCollectionViewCell {
            cell.configure(self.selectedProgress[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
}

extension EConditionViewController: UICollectionViewDelegate {
    
}
