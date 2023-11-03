//
//  DocumentViewController.swift
//  WHO
//
//  Created by Durgesh on 03/11/23.
//

import UIKit

class DocumentViewController: UIViewController {
    
    @IBOutlet weak var imageViewV: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    var contracChoiceData = ContraceptualChoicesModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        contracChoiceData.list.insert(ContraceptualContentModel(), at: 0)
        contracChoiceData.list.insert(ContraceptualContentModel(title: StringConstant.description, content: contracChoiceData.desc), at: 1)
        contracChoiceData.list.insert(ContraceptualContentModel(title: StringConstant.howItsWork, content: contracChoiceData.howItWorks), at: 2)
        self.imageViewV.image = UIImage(named: self.contracChoiceData.image)
        self.titleLabel.text = self.contracChoiceData.title
        self.tableView.reloadData()
    }
    
    
    @IBAction func tapOnBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}

extension DocumentViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contracChoiceData.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: DocumentDTableViewCell.identifer, for: indexPath) as? DocumentDTableViewCell {
                cell.configure(self.contracChoiceData)
                return cell
            }
            return UITableViewCell()
        }
        if let cell = tableView.dequeueReusableCell(withIdentifier: DocumentTableViewCell.identifier, for: indexPath) as? DocumentTableViewCell {
            cell.configure(contracChoiceData.list[indexPath.row], row: indexPath.row)
            return cell
        }
        return UITableViewCell()
    }
}

extension DocumentViewController: UITableViewDelegate {
    
}
