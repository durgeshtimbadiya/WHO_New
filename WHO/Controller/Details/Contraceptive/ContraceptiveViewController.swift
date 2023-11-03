//
//  ContraceptiveViewController.swift
//  WHO
//
//  Created by Durgesh on 03/11/23.
//

import UIKit

class ContraceptiveViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    
    private var contraceptvList = ContentManager.shared.contraceptiveList

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        HeaderManager.addHeader(self, title: StringConstant.ContraceptiveChoices, topConstraint: self.topConstraint)
    }
}

extension ContraceptiveViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contraceptvList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: DocumentTableViewCell.identifier, for: indexPath) as? DocumentTableViewCell {
            cell.configureCont(self.contraceptvList[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}

extension ContraceptiveViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let myObject = Storyboard.details.instantiateViewController(withIdentifier: DocumentViewController().className) as? DocumentViewController {
            myObject.contracChoiceData = self.contraceptvList[indexPath.row]
            self.navigationController?.pushViewController(myObject, animated: true)
        }
    }
}
