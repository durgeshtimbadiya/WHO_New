//
//  EffectivenessViewController.swift
//  WHO
//
//  Created by Durgesh on 25/10/23.
//

import UIKit

class EffectivenessViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!

    var titleString = ""
    
    private var effectiveList = [EffectivenessModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setCellData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        HeaderManager.addHeader(self, title: titleString, isBackButton: true, topConstraint: self.topConstraint)
    }
    
    func setCellData() {
        effectiveList = [EffectivenessModel]()
        
        effectiveList.append(EffectivenessModel(image1: EffectivenessString.image1_1, imagePerc1: "0.05%", imageTitle1: EffectivenessString.imageTitle1_1, image2: EffectivenessString.image1_2, imagePerc2: "0.05%", imageTitle2: EffectivenessString.imageTitle1_2, image3: EffectivenessString.image1_3, imagePerc3: "0.8%", imageTitle3: EffectivenessString.imageTitle1_3, image4: EffectivenessString.image1_4, imagePerc4: "0.15%", imageTitle4: EffectivenessString.imageTitle1_4, content1: EffectivenessString.content1_1, content2: EffectivenessString.content1_2))
        
        effectiveList.append(EffectivenessModel(image1: EffectivenessString.image2_1, imagePerc1: "6%", imageTitle1: EffectivenessString.imageTitle2_1, image2: EffectivenessString.image2_2, imagePerc2: "9%", imageTitle2: EffectivenessString.imageTitle2_2, image3: EffectivenessString.image2_3, imagePerc3: "LAM", imageTitle3: EffectivenessString.imageTitle2_3, image4: EffectivenessString.image2_4, imagePerc4: "9%", imageTitle4: EffectivenessString.imageTitle2_4, content1: EffectivenessString.content2_1, content2: EffectivenessString.content2_2, content3: EffectivenessString.content2_3, content4: EffectivenessString.content2_4))
        
        effectiveList.append(EffectivenessModel(image1: EffectivenessString.image3_1, imagePerc1: "18%", imageTitle1: EffectivenessString.imageTitle3_1, image2: EffectivenessString.image3_2, imagePerc2: "21%", imageTitle2: EffectivenessString.imageTitle3_2, image3: EffectivenessString.image3_3, imagePerc3: "12%", imageTitle3: EffectivenessString.imageTitle3_3, image4: EffectivenessString.image3_4, imagePerc4: "24%", imageTitle4: EffectivenessString.imageTitle3_4, content1: EffectivenessString.content3_1, content2: EffectivenessString.content3_2))
        
        effectiveList.append(EffectivenessModel(image1: EffectivenessString.image4_1, imagePerc1: "22%", imageTitle1: EffectivenessString.imageTitle4_1, image2: EffectivenessString.image4_2, imagePerc2: "28%", imageTitle2: EffectivenessString.imageTitle4_2, content1: EffectivenessString.content4_1))
        
        self.tableView.reloadData()
    }
}

extension EffectivenessViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.effectiveList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: indexPath.row == self.effectiveList.count - 1 ? EffectivenessTableViewCell.identifier1 : EffectivenessTableViewCell.identifier, for: indexPath) as? EffectivenessTableViewCell {
            cell.configure(effectiveList[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}

extension EffectivenessViewController: UITableViewDelegate {
    
}
