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
    @IBOutlet fileprivate weak var containerView: UIView!

    var containerVC: ContainerViewController?

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
    
    private func addContainers() {
        var viewsArray = [UIViewController]()
        if let conditionView = Storyboard.details.instantiateViewController(withIdentifier: EConditionViewController().className) as? EConditionViewController {
            conditionView.title = "Conditions"
            viewsArray.append(conditionView)
        }
        if let prefeView = Storyboard.details.instantiateViewController(withIdentifier: EConditionViewController().className) as? EConditionViewController {
            prefeView.title = "Preferences"
            viewsArray.append(prefeView)
        }
        
        self.containerVC = ContainerConstant.addContainerTo(self, containerControllers: viewsArray as NSArray, menuIndicatorColor: .clear, menuItemTitleColor: .systemGray2, menuItemSelectedTitleColor: .white, menuBackGroudColor: .clear, font: UIFont.systemFont(ofSize: 16.0), menuViewWidth: self.containerView.frame.size.width, isSquareBox: true)
//        self.containerVC?.view.frame.size.width = self.parentFrame!.size.width
        self.containerVC?.view.frame.size.height = self.view.frame.size.height
        self.containerVC?.delegate = self
    }
}

// MARK: - ContainerVCDelegate -
extension EligibilityToolsViewController: ContainerVCDelegate {
    func containerViewItem(_ index: NSInteger, currentController: UIViewController) {
        
    }
}
