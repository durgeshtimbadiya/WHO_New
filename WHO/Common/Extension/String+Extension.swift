//
//  String+Extension.swift
//  WHO
//
//  Created by Durgesh on 13/10/23.
//

import Foundation
import UIKit

extension String {
    func localizeString() -> String { //en, as-IN, bn-IN, gu-IN, hi-IN, kn-IN, ml-IN, or-IN, pa-IN, ta-IN, te-IN,
        if let path = Bundle.main.path(forResource: UserDefaults.standard.value(forKey: "SelectedLanguege") as? String ?? "en", ofType: "lproj"), let bundle = Bundle(path: path) {
            return NSLocalizedString(self, tableName: nil, bundle: bundle, value: "", comment: "")
        }
        return self
    }
    
    func htmlToAttributedString(_ font: UIFont) -> NSAttributedString? {
        do {
            return try NSAttributedString(htmlString: self, font: font, useDocumentFontSize: false)
        } catch {
            return self.htmlToAttributedString
        }
    }
    
    var htmlToAttributedString: NSAttributedString? {
        guard let data = data(using: .utf8) else { return nil }
        do {
            return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding:String.Encoding.utf8.rawValue], documentAttributes: nil)
        } catch {
            return nil
        }
    }
    var htmlToString: String {
        return htmlToAttributedString?.string ?? ""
    }
}
