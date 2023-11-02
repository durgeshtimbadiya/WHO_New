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
    
    private var conditionList = ConentManager.shared.eConditionsList
    private var searchDataList = ConentManager.shared.eConditionsList
    
    private struct SelectedData {
        var index = -1
        var title = ""
        var selectedIndex = -1
    }
    private var selectedList = [SelectedData]()
    var containerVCC: ContainerViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.bottomSheetView.isHidden = true
        
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
        
    }
    
    @objc func tapOnRow(_ sender: UIButton) {
        self.conditionList[sender.tag].selectedPos = -1
        if let index = self.selectedList.firstIndex(where: { $0.title == self.conditionList[sender.tag].conditionTitle }) {
            self.conditionList[sender.tag].isSelected = false
            self.conditionList[sender.tag].isSelected1 = false
            self.conditionList[sender.tag].isSelected2 = false
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
            if !self.selectedList.contains(where: { $0.title == self.conditionList[sender.tag].conditionTitle }) {
                self.addIntoSelected(sender.tag)
            }
        }
        self.tableView.reloadRows(at: [IndexPath(row: sender.tag, section: 0)], with: .none)
        openBottomSheet(sender.tag)
    }
    
    private func addIntoSelected(_ rowIndex: Int) {
        //Need to remove duplicate
        self.selectedList.append(SelectedData(index: rowIndex, title: self.conditionList[rowIndex].conditionTitle, selectedIndex: self.conditionList[rowIndex].isSelected0 ? 3 : (self.conditionList[rowIndex].isSelected ? 0 : (self.conditionList[rowIndex].isSelected1 ? 1 : 2))))
    }
    
    func searchData(with search: String) {
        if !search.isEmpty {
            conditionList = ConentManager.shared.eConditionsList.filter({ (object) -> Bool in
                return object.conditionTitle.range(of: search, options: .caseInsensitive) != nil
            })
        } else {
            conditionList = ConentManager.shared.eConditionsList
        }
        for select in self.selectedList {
            if let index = self.conditionList.firstIndex(where: { $0.conditionTitle == select.title }) {
                self.conditionList[index].isSelected = select.selectedIndex == 0
                self.conditionList[index].isSelected1 = select.selectedIndex == 1
                self.conditionList[index].isSelected2 = select.selectedIndex == 2
                self.conditionList[index].isSelected0 = select.selectedIndex == 3
                self.conditionList[index].selectedPos = self.conditionList[index].isArrow && select.index != -1 ? index : -1
            }
        }
        self.tableView.reloadData()
    }
    
    private func openBottomSheet(_ indexRow: Int) {
        self.bottomSheetView.isHidden = false
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
            } else if let index = self.selectedList.firstIndex(where: { $0.title == self.conditionList[indexPath.row].conditionTitle }) {
                self.selectedList.remove(at: index)
            }
            self.conditionList[indexPath.row].isSelected0 = !self.conditionList[indexPath.row].isSelected0
            self.tableView.reloadRows(at: [indexPath], with: .none)
            openBottomSheet(indexPath.row)
        }
    }
}

extension EConditionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
}

extension EConditionViewController: UICollectionViewDelegate {
    
}
