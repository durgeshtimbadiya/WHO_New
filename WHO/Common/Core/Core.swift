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
    
    public static func setPowerAttributes(_ string: String, font: UIFont, isBold: Bool, smallFont: UIFont) -> NSAttributedString? {
        var stringOptions = string.components(separatedBy: "<sup><small><small>")
        let attStr = NSMutableAttributedString()
        if stringOptions.count > 0 {
            if isBold {
                stringOptions[0] = "<strong>\(stringOptions[0])</strong>"
            }
            if let att = stringOptions[0].htmlToAttributedString(font) {
                attStr.append(att)
            }
        } else {
            return string.htmlToAttributedString(font)
        }
        for i in 1..<stringOptions.count {
            var strOpt1 = stringOptions[i].components(separatedBy: "</small></small></sup>")
            if strOpt1.count > 1, !strOpt1[1].isEmpty {
                strOpt1[0] = "<sup><small><small>" + strOpt1[0] + "</small></small></sup>"
                if isBold {
                    strOpt1[0] = "<strong>\(strOpt1[0])</strong>"
                }
                if let att1 = strOpt1[0].htmlToAttributedString(smallFont) {
                    attStr.append(att1)
                }
                
                if isBold {
                    strOpt1[1] = "<strong>\(strOpt1[1])</strong>"
                }
                if let att = strOpt1[1].htmlToAttributedString(font) {
                    attStr.append(att)
                }
            } else {
                stringOptions[i] = "<sup><small><small>" + stringOptions[i]
                if isBold {
                    stringOptions[i] = "<strong>\(stringOptions[i])</strong>"
                }
                if let att1 = stringOptions[i].htmlToAttributedString(smallFont) {
                    attStr.append(att1)
                }
            }
        }
//        if stringOptions.count > 1 {
//            var strOpt1 = stringOptions[1].components(separatedBy: "</small></small></sup>")
//            if strOpt1.count > 1, !strOpt1[1].isEmpty {
//                strOpt1[0] = "<sup><small><small>" + strOpt1[0] + "</small></small></sup>"
//                if isBold {
//                    strOpt1[0] = "<strong>\(strOpt1[0])</strong>"
//                }
//                if let att1 = strOpt1[0].htmlToAttributedString(smallFont) {
//                    attStr.append(att1)
//                }
//                
//                if isBold {
//                    strOpt1[1] = "<strong>\(strOpt1[1])</strong>"
//                }
//                if let att = strOpt1[1].htmlToAttributedString(font) {
//                    attStr.append(att)
//                }
//            } else {
//                stringOptions[1] = "<sup><small><small>" + stringOptions[1]
//                if isBold {
//                    stringOptions[1] = "<strong>\(stringOptions[1])</strong>"
//                }
//                if let att1 = stringOptions[1].htmlToAttributedString(smallFont) {
//                    attStr.append(att1)
//                }
//            }
//        }
      
        return attStr
    }
}
