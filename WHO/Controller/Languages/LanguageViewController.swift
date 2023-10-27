//
//  LanguageViewController.swift
//  WHO
//
//  Created by Durgesh on 17/10/23.
//

import UIKit

class LanguageViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var bottomTblConstraint: NSLayoutConstraint!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var isFromLaunch = false
    
    //en, as-IN, bn-IN, gu-IN, hi-IN, kn-IN, ml-IN, or-IN, pa-IN, ta-IN, te-IN,
    struct LanguageData {
        var title = ""
        var code = ""
        var searchString = ""
    }
    
    private var languageList = [LanguageData]()
    private var searchList = [LanguageData]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.hideKeyboard()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.languageList.append(LanguageData(title: LanguageName.Assamese, code: LanguageCode.Assamese, searchString: "Assamese"))
        self.languageList.append(LanguageData(title: LanguageName.Bengali, code: LanguageCode.Bengali, searchString: "Bengali"))
        self.languageList.append(LanguageData(title: LanguageName.English, code: LanguageCode.English, searchString: "English"))
        self.languageList.append(LanguageData(title: LanguageName.Gujarati, code: LanguageCode.Gujarati, searchString: "Gujarati"))
        self.languageList.append(LanguageData(title: LanguageName.Hindi, code: LanguageCode.Hindi, searchString: "Hindi"))
        self.languageList.append(LanguageData(title: LanguageName.Kannada, code: LanguageCode.Kannada, searchString: "Kannada"))
        self.languageList.append(LanguageData(title: LanguageName.Malayalam, code: LanguageCode.Malayalam, searchString: "Malayalam"))
        self.languageList.append(LanguageData(title: LanguageName.Odia_Oriya, code: LanguageCode.Odia_Oriya, searchString: "Odia_Oriya"))
        self.languageList.append(LanguageData(title: LanguageName.Punjabi, code: LanguageCode.Assamese, searchString: "Punjabi"))
        self.languageList.append(LanguageData(title: LanguageName.Tamil, code: LanguageCode.Tamil, searchString: "Tamil"))
        self.languageList.append(LanguageData(title: LanguageName.Telugu, code: LanguageCode.Telugu, searchString: "Telugu"))
        self.searchList = self.languageList
        self.tableView.reloadData()
        
        self.titleLabel.text = StringConstant.SelectLanguage
        self.textField.placeholder = StringConstant.Search
        self.textField.text = ""
        self.tableView.backgroundColor = .white
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShowNotification), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHideNotification), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc private func keyboardWillShowNotification (notification: Notification) {
        if bottomTblConstraint.constant == 10.0 {
            UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {
                if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue  {
                    let keyboardRectangle = keyboardFrame.cgRectValue
                    self.bottomTblConstraint.constant = keyboardRectangle.height - 90.0

                    if let window = (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first, window.safeAreaInsets.bottom > 0 {
                        self.bottomTblConstraint.constant -= window.safeAreaInsets.bottom
                    }
                }
                self.view.layoutIfNeeded()
            }, completion: nil)
        }
    }
    
    @objc private func keyboardWillHideNotification (notification: Notification) {
        if bottomTblConstraint.constant != 10.0 {
            UIView.animate(withDuration: 0.1, delay: 0, options: .curveEaseIn, animations: {
                self.bottomTblConstraint.constant = 10.0
                self.view.layoutIfNeeded()
            }, completion: nil)
        }
    }
}

extension LanguageViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.languageList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "titleCell", for: indexPath)
        if let titleLabel = cell.viewWithTag(1) as? UILabel {
            titleLabel.text = self.languageList[indexPath.row].title
        }
        cell.selectionStyle = .none
        return cell
    }
}

extension LanguageViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        UserDefaults.standard.setValue(self.languageList[indexPath.row].code, forKey: "SelectedLanguege")
        
        let alertV = UIAlertController(title: "", message: "Please reopen application to change language", preferredStyle: .alert)
        alertV.addAction(UIAlertAction(title: "Ok", style: .default, handler: { action in
            exit(0)
        }))
        self.present(alertV, animated: true)
        
//        if isFromLaunch {
//            self.navigationController?.popViewController(animated: true)
//        } else {
//            let dashBoard = Storyboard.dashboard.instantiateViewController(identifier: "DashboardViewController")
//            self.navigationController?.viewControllers = [dashBoard]
//        }
    }
}

extension LanguageViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        var search = ""
        if string.isEmpty {
            search = String(search.dropLast())
        } else {
            search = textField.text! + string
        }
        
        if search.isEmpty {
            self.languageList = self.searchList
        } else {
            self.languageList = self.searchList.filter({ $0.searchString.lowercased().contains(search.lowercased()) })
        }
        self.tableView.reloadData()
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
    }
}
