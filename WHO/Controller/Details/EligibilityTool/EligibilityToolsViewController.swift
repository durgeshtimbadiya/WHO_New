//
//  EligibilityToolsViewController.swift
//  WHO
//
//  Created by Durgesh on 17/10/23.
//

import UIKit

class EligibilityToolsViewController: UIViewController {
    
    @IBOutlet fileprivate weak var textField: UITextField!
    @IBOutlet fileprivate weak var segmentController: UISegmentedControl!
    @IBOutlet fileprivate weak var scrollView: UIScrollView!
    @IBOutlet fileprivate weak var tableViewCondition: UITableView!
    @IBOutlet fileprivate weak var tableViewPreference: UITableView!
    @IBOutlet fileprivate weak var bottomConstrMainView: UIScrollView!
    
    private var conditionalList = [ConditionsModel]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    private func addData() {
        var ageList = [ConditionProgressModel]()
        ageList.append(ConditionProgressModel(progressTitle: "CHC", progressValS: "1", progressValueF: 1.0, subTitle: "Combined pills and combined injectables", desc: "Age (Menarche to <18 Years)"))
    }
    
    @IBAction func changeSegment(_ sender: UISegmentedControl) {
        
    }
}
