//
//  HeaderManager.swift
//  HFM
//
//  Created by Durgesh on 29/09/23.
//

import UIKit

class HeaderManager: NSObject {
    // MARK: - Static Properties -
    static let shared = HeaderManager()
    static let viewTag = 99999996

    // MARK: - Private Properties -
    private var curVController = UIViewController()

    /*
     *  Custom Header for application
     *  Add custom Header to view
     */
    static func addHeader(_ controller: UIViewController, title: String, isOptionShow: Bool = true, isBackButton: Bool = false, topConstraint: NSLayoutConstraint? = nil) {
        if let myobject = Storyboard.dashboard.instantiateViewController(withIdentifier: HeaderViewController().className) as? HeaderViewController {
            if let headerView = controller.view.viewWithTag(HeaderManager.viewTag) {
                headerView.removeFromSuperview()
            }
            HeaderManager.shared.curVController = controller
           
            myobject.view.tag = HeaderManager.viewTag
            myobject.titleLabel.text = title
            myobject.titleLabel.sizeToFit()
            
            var viewHeight = myobject.titleLabel.frame.size.height + 20.0
            if viewHeight < 54.0 {
                viewHeight = 54.0
            }
            if let window = (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first, window.safeAreaInsets.top > 0 {
                myobject.view.frame = CGRect(x: 0.0, y: window.safeAreaInsets.top, width: controller.view.frame.size.width, height: viewHeight)
            } else {
                myobject.view.frame = CGRect(x: 0.0, y: 0.0, width: controller.view.frame.size.width, height: viewHeight)
            }
            if let topCons = topConstraint {
                topCons.constant = myobject.view.frame.size.height
            }
            myobject.optionButton.isHidden = !isOptionShow
            myobject.menuButton.isSelected = isBackButton
            myobject.menuButton.addTarget(HeaderManager.shared.self, action: #selector(tapOnMenu(_:)), for: .touchUpInside)
            myobject.optionButton.addTarget(HeaderManager.shared.self, action: #selector(tapOnOption(_:)), for: .touchUpInside)
            controller.view.addSubview(myobject.view)
        }
    }
    
    @objc func tapOnMenu(_ sender: UIButton) {
        if sender.isSelected {
            curVController.navigationController?.popViewController(animated: true)
            return
        }
        if let navControllers = curVController.navigationController?.children {
            for controller in navControllers {
                if controller is DashboardViewController {
                    curVController.navigationController?.popToViewController(controller, animated: true)
                    return
                }
            }
        }
        let dashBoard = Storyboard.dashboard.instantiateViewController(identifier: "DashboardViewController")
        curVController.navigationController?.viewControllers = [dashBoard]
    }
    
    @objc func tapOnOption(_ sender: UIButton) {
        if let navControllers = curVController.navigationController?.children {
            for controller in navControllers {
                if controller is HomeListViewController {
                    curVController.navigationController?.popToViewController(controller, animated: true)
                    return
                }
            }
        }
        let dashBoard = Storyboard.dashboard.instantiateViewController(identifier: "DashboardViewController")
        let homeList = Storyboard.dashboard.instantiateViewController(identifier: "HomeListViewController")
        curVController.navigationController?.viewControllers = [dashBoard, homeList]
    }
}
