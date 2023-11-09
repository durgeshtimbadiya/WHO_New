//
//  Constants.swift
//  TaleOMeter
//
//  Created by Durgesh on 08/03/22.
//  Copyright © 2022 Durgesh. All rights reserved.
//

import UIKit

struct Constants {
    static let primaryColor = UIColor(hexString: "#316C54")
    static let grayColor = UIColor(hexString: "#D9D9D9")
    static let greenColor = UIColor(hexString: "#80B942")
    static let redColor = UIColor(hexString: "#D02027")
    static let blueColor = UIColor(hexString: "#376CB2")
    static let lightBlueColor = UIColor(hexString: "#6CA2BB")
    static let orangeColor = UIColor(hexString: "#F0822E")
    static let lightOrangeColor =  UIColor(hexString: "#E1532B")
}

struct Storyboard {
    static let dashboard = UIStoryboard(name: "Main", bundle: nil)
    static let launch = UIStoryboard(name: "LaunchScreen", bundle: nil)
    static let details = UIStoryboard(name: "Details", bundle: nil)
}

struct SystemFont {
    static let regular8 = UIFont.systemFont(ofSize: 8.0)
    static let regular9 = UIFont.systemFont(ofSize: 9.0)
    static let regular13 = UIFont.systemFont(ofSize: 13.0)
    static let regular14 = UIFont.systemFont(ofSize: 14.0)
    static let regular15 = UIFont.systemFont(ofSize: 15.0)
    static let regular16 = UIFont.systemFont(ofSize: 16.0)
    static let regular17 = UIFont.systemFont(ofSize: 16.0)
    static let regular18 = UIFont.systemFont(ofSize: 16.0)
    static let semiBold16 = UIFont.systemFont(ofSize: 16.0, weight: .semibold)
}

