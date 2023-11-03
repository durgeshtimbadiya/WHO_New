//
//  InformationProgressViewController.swift
//  WHO
//
//  Created by Durgesh on 03/11/23.
//

import UIKit

class InformationProgressViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var infoList = ContentManager.shared.informationList
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapOnBack(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}


extension InformationProgressViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: ProgressViewTableViewCell.identifier, for: indexPath) as? ProgressViewTableViewCell {
            cell.configureInfo(self.infoList[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}

extension InformationProgressViewController: UITableViewDelegate {
    
}
