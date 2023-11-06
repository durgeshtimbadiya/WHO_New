//
//  ConditionsDetailViewController.swift
//  WHO
//
//  Created by Durgesh on 25/10/23.
//

import UIKit

class ConditionsDetailViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!

    var conditionIndex = 0
    var isAntiMedi = false
    var titleString = ""
    var isCondition = true
    var addSubModels = [AdditionalSubModel]()

    private var conditionList = [ConditionNoteModel]()
    private var expandIndex = -1

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if isCondition {
            if conditionIndex == 0 {
                self.setDetailData()
            } else {
                self.setNoteData()
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        HeaderManager.addHeader(self, title: titleString, isBackButton: true, topConstraint: self.topConstraint)
    }
    
    func setDetailData() {
        mainView.backgroundColor = UIColor(displayP3Red: 241.0 / 255.0, green: 241.0 / 255.0, blue: 241.0 / 255.0, alpha: 1.0)
        conditionList = [ConditionNoteModel]()
        
        let descList1: [String] = [ConditionsListString.detailDesc1_1, ConditionsListString.detailDesc1_2, ConditionsListString.detailDesc1_3, ConditionsListString.detailDesc1_4, ConditionsListString.detailDesc1_5, ConditionsListString.detailDesc1_6, ConditionsListString.detailDesc1_7, ConditionsListString.detailDesc1_8, ConditionsListString.detailDesc1_9, ConditionsListString.detailDesc1_10, ConditionsListString.detailDesc1_11]
        
        let descList2: [String] = [ConditionsListString.detailDesc2_1, ConditionsListString.detailDesc2_2, ConditionsListString.detailDesc2_3, ConditionsListString.detailDesc2_4, ConditionsListString.detailDesc2_5, ConditionsListString.detailDesc2_6, ConditionsListString.detailDesc2_7, ConditionsListString.detailDesc2_8, ConditionsListString.detailDesc2_9, ConditionsListString.detailDesc2_10, ConditionsListString.detailDesc2_11]
        
        let descList3: [String] = [ConditionsListString.detailDesc3_1, ConditionsListString.detailDesc3_2, ConditionsListString.detailDesc3_3, ConditionsListString.detailDesc3_4, ConditionsListString.detailDesc3_5, ConditionsListString.detailDesc3_6]
        
        conditionList.append(ConditionNoteModel(image: ConditionsListString.detailImg1, title: ConditionsListString.detailTitle1, descList: descList1))
        conditionList.append(ConditionNoteModel(image: ConditionsListString.detailImg2, title: ConditionsListString.detailTitle2, descList: descList2))
        conditionList.append(ConditionNoteModel(image: ConditionsListString.detailImg3, title: ConditionsListString.detailTitle3, descList: descList3))
        conditionList.append(ConditionNoteModel(image: ConditionsListString.detailImg4, title: ConditionsListString.detailTitle4, description: "", descList: [ConditionsListString.detailDesc4_1]))
        self.tableView.reloadData()
    }
    
    func setNoteData() {
        mainView.backgroundColor = .white
        conditionList = [ConditionNoteModel]()
        conditionList.append(ConditionNoteModel(title: Alphabet.a + ":", description: ConditionsListString.noteDesc_a))
        conditionList.append(ConditionNoteModel(title: Alphabet.b + ":", description: ConditionsListString.noteDesc_b))
        conditionList.append(ConditionNoteModel(title: Alphabet.c + ":", description: ConditionsListString.noteDesc_c))
        conditionList.append(ConditionNoteModel(title: Alphabet.d + ":", description: ConditionsListString.noteDesc_d))
        conditionList.append(ConditionNoteModel(title: Alphabet.e + ":", description: ConditionsListString.noteDesc_e))
        conditionList.append(ConditionNoteModel(title: Alphabet.f + ":", description: ConditionsListString.noteDesc_f))
        conditionList.append(ConditionNoteModel(title: Alphabet.g + ":", description: ConditionsListString.noteDesc_g))
        conditionList.append(ConditionNoteModel(title: Alphabet.h + ":", description: ConditionsListString.noteDesc_h))
        conditionList.append(ConditionNoteModel(title: Alphabet.i + ":", description: ConditionsListString.noteDesc_i))
        conditionList.append(ConditionNoteModel(title: Alphabet.j + ":", description: ConditionsListString.noteDesc_j))
        conditionList.append(ConditionNoteModel(title: Alphabet.k + ":", description: ConditionsListString.noteDesc_k))
        conditionList.append(ConditionNoteModel(title: Alphabet.l + ":", description: ConditionsListString.noteDesc_l))
        conditionList.append(ConditionNoteModel(title: Alphabet.m + ":", description: ConditionsListString.noteDesc_m))
        conditionList.append(ConditionNoteModel(title: Alphabet.n + ":", description: ConditionsListString.noteDesc_n))
        conditionList.append(ConditionNoteModel(title: Alphabet.o + ":", description: ConditionsListString.noteDesc_o))
        conditionList.append(ConditionNoteModel(title: Alphabet.p + ":", description: ConditionsListString.noteDesc_p))
        conditionList.append(ConditionNoteModel(title: Alphabet.q + ":", description: ConditionsListString.noteDesc_q))
        conditionList.append(ConditionNoteModel(title: Alphabet.r + ":", description: ConditionsListString.noteDesc_r))
        conditionList.append(ConditionNoteModel(title: Alphabet.s + ":", description: ConditionsListString.noteDesc_s))
        conditionList.append(ConditionNoteModel(title: Alphabet.t + ":", description: ConditionsListString.noteDesc_t))
        conditionList.append(ConditionNoteModel(title: Alphabet.u + ":", description: ConditionsListString.noteDesc_u))
        conditionList.append(ConditionNoteModel(title: Alphabet.v + ":", description: ConditionsListString.noteDesc_v))
        conditionList.append(ConditionNoteModel(title: Alphabet.w + ":", description: ConditionsListString.noteDesc_w))
        conditionList.append(ConditionNoteModel(title: Alphabet.x + ":", description: ConditionsListString.noteDesc_x))
        conditionList.append(ConditionNoteModel(title: Alphabet.y + ":", description: ConditionsListString.noteDesc_y))
        conditionList.append(ConditionNoteModel(title: Alphabet.z + ":", description: ConditionsListString.noteDesc_z))
        self.tableView.reloadData()
    }
    
    @objc func tapOnExpand(_ sender: UIButton) {
        if expandIndex != sender.tag {
            expandIndex = sender.tag
        } else {
            expandIndex = -1
        }
        self.tableView.reloadData()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            self.tableView.reloadData()
        }
    }
}

extension ConditionsDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isCondition ? conditionList.count : addSubModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if isCondition {
            if let cell = tableView.dequeueReusableCell(withIdentifier: conditionIndex == 0 ? (expandIndex == indexPath.row ? ConditionsTableViewCell.expandCell : ConditionsTableViewCell.singleCell) : ConditionsTableViewCell.textCell, for: indexPath) as? ConditionsTableViewCell {
                cell.configure(conditionList[indexPath.row], target: self, selector: #selector(tapOnExpand(_:)), row: indexPath.row, isLast: self.conditionList.count - 1 == indexPath.row)
                return cell
            }
        } else {
            if let cell = tableView.dequeueReusableCell(withIdentifier: (isAntiMedi || indexPath.row != addSubModels.count - 1) ? (expandIndex == indexPath.row ? (isAntiMedi ? ConditionsTableViewCell.expandAntiCell : ConditionsTableViewCell.expandAddCell) : ConditionsTableViewCell.singleCell) : ConditionsTableViewCell.textCell, for: indexPath) as? ConditionsTableViewCell {
                cell.configureAddSub(addSubModels[indexPath.row], target: self, selector: #selector(tapOnExpand(_:)), row: indexPath.row)
                return cell
            }
        }
        return UITableViewCell()
    }
}

extension ConditionsDetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

