//
//  Core.swift
//  WHO
//
//  Created by Durgesh on 03/11/23.
//

import UIKit

class Core: NSObject {

    public static func setProunceVal(_ stringVal: String, position: String.Index) -> NSMutableAttributedString {
        //<sup><small><small><strong>2</strong></small></small></sup>
        var newStr = stringVal.replacingOccurrences(of: "<sup>", with: "")
        newStr = newStr.replacingOccurrences(of: "</sup>", with: "")
        newStr = newStr.replacingOccurrences(of: "<small>", with: "")
        newStr = newStr.replacingOccurrences(of: "</small>", with: "")
        newStr = newStr.replacingOccurrences(of: "<strong>", with: "")
        newStr = newStr.replacingOccurrences(of: "</strong>", with: "")
        let index: Int = stringVal.distance(from: stringVal.startIndex, to: position)
        let attributeStr = NSMutableAttributedString(string: newStr)
        let smallAtt = [ NSAttributedString.Key.baselineOffset: 5, NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 10.0) ] as [NSAttributedString.Key : Any]
        let rangeTitle1 = NSRange(location: index, length: 1)
        attributeStr.addAttributes(smallAtt as [NSAttributedString.Key : Any], range: rangeTitle1)
        
        return attributeStr
    }
}
