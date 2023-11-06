//
//  EligibilityToolsViewController.swift
//  WHO
//
//  Created by Durgesh on 17/10/23.
//

import UIKit

class EligibilityToolsViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!

    var containerVC: ContainerViewController?

    private var conditionalList = [ConditionsModel]()
    private var eConditionVC = EConditionViewController()
    private var searchString = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.hideKeyboard()
        
        containerView.layer.masksToBounds = true
        containerView.layer.cornerRadius = 25.0
        containerView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        self.addContainers()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        HeaderManager.addHeader(self, title: StringConstant.EligibilityTool, topConstraint: self.topConstraint)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShowNotification), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHideNotification), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc private func keyboardWillShowNotification (notification: Notification) {
        if bottomConstraint.constant == 0.0 {
            UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {
                if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue  {
                    let keyboardRectangle = keyboardFrame.cgRectValue
                    self.bottomConstraint.constant = keyboardRectangle.height
                    if let window = (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first, window.safeAreaInsets.bottom > 0 {
//                        self.bottomConstraint.constant -= window.safeAreaInsets.bottom
                    }
                }
                self.view.layoutIfNeeded()
            }, completion: nil)
        }
    }
    
    @objc private func keyboardWillHideNotification (notification: Notification) {
        if bottomConstraint.constant != 0.0 {
            UIView.animate(withDuration: 0.1, delay: 0, options: .curveEaseIn, animations: {
                self.bottomConstraint.constant = 0.0
                self.view.layoutIfNeeded()
            }, completion: nil)
        }
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
            self.eConditionVC = conditionView
            viewsArray.append(conditionView)
        }
        if let prefeView = Storyboard.details.instantiateViewController(withIdentifier: EPreferencesViewController().className) as? EPreferencesViewController {
            prefeView.title = "Preferences"
            viewsArray.append(prefeView)
        }
        containerVC = ContainerViewController(controllers: viewsArray as NSArray, topBarHeight: 0.0, parentViewController: self)

        if let contaninerVC = containerVC {
            contaninerVC.menuItemFont = UIFont.systemFont(ofSize: 16.0)
            contaninerVC.menuBackGroudColor = UIColor(hexString: "#D6E2DD")
            contaninerVC.menuWidth = (UIScreen.main.bounds.size.width / 2.0) - 5.0
            contaninerVC.menuViewWidth = UIScreen.main.bounds.size.width
            
            contaninerVC.delegate = self
            contaninerVC.menuIndicatorColor = .clear // UIColor(hexString: "#22CF80") // Green color
            contaninerVC.menuItemTitleColor = .black
            contaninerVC.menuItemSelectedTitleColor = .white
            contaninerVC.view.frame.size = self.containerView.frame.size
//            contaninerVC.view.shadow = true

            self.containerView.subviews.forEach({ $0.removeFromSuperview() })
            self.containerView.addSubview(contaninerVC.view)
        }
        self.eConditionVC.containerVCC = self.containerVC
    }
}

// MARK: - ContainerVCDelegate -
extension EligibilityToolsViewController: ContainerVCDelegate {
    func containerViewItem(_ index: NSInteger, currentController: UIViewController) {
        
    }
}

extension EligibilityToolsViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.containerVC?.scrollMenuViewSelectedIndex(0)
        searchString = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string.isEmpty {
            searchString = String(searchString.dropLast())
        } else {
            searchString = textField.text! + string
        }
        self.containerVC?.scrollMenuViewSelectedIndex(0)

        self.eConditionVC.searchData(with: searchString)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
}

