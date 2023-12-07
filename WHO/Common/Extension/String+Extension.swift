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
    
    func composedCharacterSequenceCount() -> Int {
        var count = 0
        let range = self.startIndex ..< self.endIndex
        self.enumerateSubstrings(in: range, options: [.byComposedCharacterSequences, .substringNotRequired]) {w,_,_,_ in
            guard w != nil else {return}
                count += 1
            }
        return count
    }
    
//    - (NSInteger)nr_composedCharacterSequenceCount
//    {
//        __block NSInteger count = 0;
//        [self enumerateSubstringsInRange:(NSRange){0, self.length}
//                                 options:NSStringEnumerationByComposedCharacterSequences | NSStringEnumerationSubstringNotRequired
//                              usingBlock:^(NSString * _Nullable substring, NSRange substringRange, NSRange enclosingRange, BOOL * _Nonnull stop) {
//                                  count += 1;
//                              }];
//        return count;
//    }
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
        UserDefaults.standard.synchronize()
        let path = Bundle.main.path(forResource: lang, ofType: "lproj")
        bundle = Bundle(path: path!)
    }
}
