//
//  EPreferencesViewController.swift
//  WHO
//
//  Created by Durgesh on 02/11/23.
//

import UIKit

class EPreferencesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var preferenceList = ContentManager.shared.ePreferencesList
    private var selectedList = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @objc func tapOnRow(_ sender: UIButton) {
        self.preferenceList[sender.tag].isSelected = false
        if let index = self.selectedList.firstIndex(where: { $0 == sender.tag }) {
            self.selectedList.remove(at: index)
        }
        self.tableView.reloadRows(at: [IndexPath(row: sender.tag, section: 0)], with: .none)
    }
}

extension EPreferencesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.preferenceList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: self.preferenceList[indexPath.row].isSelected ? HomeListTableViewCell.expandIdentifier : HomeListTableViewCell.identifier, for: indexPath) as? HomeListTableViewCell {
            cell.configurePreference(self.preferenceList[indexPath.row], target: self, selector: #selector(tapOnRow(_:)), row: indexPath.row)
            return cell
        }
        return UITableViewCell()
    }
}

extension EPreferencesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if self.selectedList.count > 2 {
            Toast.show(PreferencesList.warningEPreMessage)
            return
        }
        self.preferenceList[indexPath.row].isSelected = true
        self.selectedList.append(indexPath.row)
        self.tableView.reloadRows(at: [indexPath], with: .none)

    }
}
