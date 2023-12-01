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
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.localizedBundle(), value: "", comment: "")
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

extension Bundle {
    private static var bundle: Bundle!
    
    public static func localizedBundle() -> Bundle! {
        if bundle == nil {
            let appLang = UserDefaults.standard.value(forKey: "SelectedLanguege") as? String ?? "en"
            let path = Bundle.main.path(forResource: appLang, ofType: "lproj")
            bundle = Bundle(path: path!)
        }
        return bundle;
    }
    
    public static func setLanguage(lang: String) {
        UserDefaults.standard.setValue(lang, forKey: "SelectedLanguege")
        let path = Bundle.main.path(forResource: lang, ofType: "lproj")
        bundle = Bundle(path: path!)
    }
}
