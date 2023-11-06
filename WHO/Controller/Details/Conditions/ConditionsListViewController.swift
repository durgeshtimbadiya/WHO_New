//
//  ConditionsListViewController.swift
//  WHO
//
//  Created by Durgesh on 25/10/23.
//

import UIKit

class ConditionsListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    
    var isConditions = true
    private var conditionList = [ConditionNoteModel]()
    private var additionalList = [AdditionalModel]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if isConditions {
            self.setCellData()
        } else {
            self.setAddCellData()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        HeaderManager.addHeader(self, title: isConditions ? StringConstant.Conditions : StringConstant.AdditionalInfo, topConstraint: self.topConstraint)
    }
    
    func setCellData() {
        conditionList = [ConditionNoteModel]()
        conditionList.append(ConditionNoteModel(title: ConditionsListString.listTitle1))
        conditionList.append(ConditionNoteModel(title: ConditionsListString.listTitle2))
        self.tableView.reloadData()
    }
    
    func setAddCellData() {
        additionalList = [AdditionalModel]()
        
        var pointValList = [PointValueModel]()
        pointValList.append(PointValueModel(point: AdditionalInfoString.detailDesPoint1_1, value: AdditionalInfoString.detailDesVal1_1))
        pointValList.append(PointValueModel(point: AdditionalInfoString.detailDesPoint1_2, value: AdditionalInfoString.detailDesVal1_2))
        pointValList.append(PointValueModel(point: AdditionalInfoString.detailDesPoint1_3, value: AdditionalInfoString.detailDesVal1_3))
        pointValList.append(PointValueModel(point: AdditionalInfoString.detailDesPoint1_4, value: AdditionalInfoString.detailDesVal1_4))
        pointValList.append(PointValueModel(point: AdditionalInfoString.detailDesPoint1_5, value: AdditionalInfoString.detailDesVal1_5))
        pointValList.append(PointValueModel(point: AdditionalInfoString.detailDesPoint1_6, value: AdditionalInfoString.detailDesVal1_6))
        pointValList.append(PointValueModel(point: AdditionalInfoString.detailDesPoint1_7, value: AdditionalInfoString.detailDesVal1_7))
        pointValList.append(PointValueModel(point: AdditionalInfoString.detailDesPoint1_8, value: AdditionalInfoString.detailDesVal1_8))
        pointValList.append(PointValueModel(point: AdditionalInfoString.detailDesPoint1_9, value: AdditionalInfoString.detailDesVal1_9))
        pointValList.append(PointValueModel(point: AdditionalInfoString.detailDesPoint1_10, value: AdditionalInfoString.detailDesVal1_10))

        var addSubModels = [AdditionalSubModel]()
        addSubModels.append(AdditionalSubModel(title: AdditionalInfoString.detailTitle_1, description: AdditionalInfoString.detailSubTitle_1, list: pointValList))
        addSubModels.append(AdditionalSubModel(title: AdditionalInfoString.detailTitle_2, description: AdditionalInfoString.detailSubTitle_2, list: pointValList))
        pointValList[1] = PointValueModel(point: AdditionalInfoString.detailDesPoint1_2, value: AdditionalInfoString.detailDesVal3_2)
        addSubModels.append(AdditionalSubModel(title: AdditionalInfoString.detailTitle_3, description: AdditionalInfoString.detailSubTitle_3, list: pointValList))
        
        pointValList = [PointValueModel]()
        pointValList.append(PointValueModel(point: AdditionalInfoString.detailDesPoint4_1, value: AdditionalInfoString.detailDesVal1_1))
        pointValList.append(PointValueModel(point: AdditionalInfoString.detailDesPoint4_2, value: AdditionalInfoString.detailDesVal4_2))
        pointValList.append(PointValueModel(point: AdditionalInfoString.detailDesPoint4_3, value: AdditionalInfoString.detailDesVal4_3))
        pointValList.append(PointValueModel(point: AdditionalInfoString.detailDesPoint4_4, value: AdditionalInfoString.detailDesVal4_4))
        addSubModels.append(AdditionalSubModel(title: AdditionalInfoString.detailTitle_4, description: AdditionalInfoString.detailSubTitle_4, list: pointValList))
        addSubModels.append(AdditionalSubModel(title: "", description: "\n\n" + AdditionalInfoString.mainContent, list: [PointValueModel]()))

        additionalList.append(AdditionalModel(title: AdditionalInfoString.listTitle1, description: AdditionalInfoString.listContent1, subModels: addSubModels))

        
        additionalList.append(AdditionalModel(title: AdditionalInfoString.listTitle2, description: AdditionalInfoString.listContent2))
        
        
        pointValList = [PointValueModel]()
        pointValList.append(PointValueModel(point: AntiretroviralString.point1_1, value: AntiretroviralString.value1_1))
        pointValList.append(PointValueModel(point: AntiretroviralString.point1_2, value: AntiretroviralString.value1_2))
        pointValList.append(PointValueModel(point: AntiretroviralString.point1_3, value: AntiretroviralString.value1_3))
        pointValList.append(PointValueModel(point: AntiretroviralString.point1_4, value: AntiretroviralString.value1_4))
        pointValList.append(PointValueModel(point: AntiretroviralString.point1_5, value: AntiretroviralString.value1_5))
        pointValList.append(PointValueModel(point: AntiretroviralString.point1_6, value: AntiretroviralString.value1_6))
        pointValList.append(PointValueModel(point: AntiretroviralString.point1_7, value: AntiretroviralString.value1_7))
        
        addSubModels = [AdditionalSubModel]()
        addSubModels.append(AdditionalSubModel(title: AntiretroviralString.title1, list: pointValList))

        pointValList = [PointValueModel]()
        pointValList.append(PointValueModel(point: AntiretroviralString.point2_1, value: AntiretroviralString.value2_1))
        pointValList.append(PointValueModel(point: AntiretroviralString.point2_2, value: AntiretroviralString.value2_2))
        pointValList.append(PointValueModel(point: AntiretroviralString.point2_3, value: AntiretroviralString.value2_3))
        pointValList.append(PointValueModel(point: AntiretroviralString.point2_4, value: AntiretroviralString.value2_4))
        
        addSubModels.append(AdditionalSubModel(title: AntiretroviralString.title2, list: pointValList))
        
        pointValList = [PointValueModel]()
        pointValList.append(PointValueModel(point: AntiretroviralString.point3_1, value: AntiretroviralString.value3_1))
        pointValList.append(PointValueModel(point: AntiretroviralString.point3_2, value: AntiretroviralString.value3_2))
        pointValList.append(PointValueModel(point: AntiretroviralString.point3_3, value: AntiretroviralString.value3_3))
        pointValList.append(PointValueModel(point: AntiretroviralString.point3_4, value: AntiretroviralString.value3_4))
        
        addSubModels.append(AdditionalSubModel(title: AntiretroviralString.title3, list: pointValList))
        
        pointValList = [PointValueModel]()
        pointValList.append(PointValueModel(point: AntiretroviralString.point4_1, value: AntiretroviralString.value4_1))
    
        addSubModels.append(AdditionalSubModel(title: AntiretroviralString.title4, list: pointValList))
        additionalList.append(AdditionalModel(title: AdditionalInfoString.listTitle3, description: AdditionalInfoString.listContent3, subModels: addSubModels))
        
        self.tableView.reloadData()
    }
}

extension ConditionsListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isConditions ? conditionList.count : additionalList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: isConditions ? ConditionsTableViewCell.singleCell : ConditionsTableViewCell.addListCell, for: indexPath) as? ConditionsTableViewCell {
            if isConditions {
                cell.configure(conditionList[indexPath.row], target: self, selector: Selector(("methodname")), row: indexPath.row, isLast: false)
            } else {
                cell.configureAdditional(additionalList[indexPath.row])
            }
            return cell
        }
        return UITableViewCell()
    }
}

extension ConditionsListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if !isConditions && indexPath.row == 1 {
            if let myObject = Storyboard.details.instantiateViewController(withIdentifier: EffectivenessViewController().className) as? EffectivenessViewController {
                myObject.titleString = additionalList[indexPath.row].title
                self.navigationController?.pushViewController(myObject, animated: true)
            }
        } else {
            if let myObject = Storyboard.details.instantiateViewController(withIdentifier: ConditionsDetailViewController().className) as? ConditionsDetailViewController {
                myObject.conditionIndex = indexPath.row
                myObject.titleString = isConditions ? conditionList[indexPath.row].title : additionalList[indexPath.row].title
                myObject.isCondition = self.isConditions
                myObject.isAntiMedi = indexPath.row == 2
                if !isConditions {
                    myObject.addSubModels = additionalList[indexPath.row].subModels
                }
                self.navigationController?.pushViewController(myObject, animated: true)
            }
        }
        
    }
}
