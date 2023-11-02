//
//  EConditionCollectionViewCell.swift
//  WHO
//
//  Created by Durgesh on 02/11/23.
//

import UIKit

class EConditionCollectionViewCell: UICollectionViewCell {
    static let identifier = "progressCell"
    
    @IBOutlet weak var progressBar: KDCircularProgress!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var imageViewV: UIImageView!
}
