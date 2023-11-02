//
//  Condition1Model.swift
//  WHO
//
//  Created by Apple on 01/11/23.
//

import Foundation

struct ConditionModel {
    var additionalContent = String()
    var clazz = ""
    var additionalSubPointCond = [AdditionalSubPointCond]()
}

struct AdditionalSubPointCond {
    var img = String()
    var additionSubPoint = String()
    var points = String()
    var subPointCond = [SubPointListCond]()
    var isClose = ""
}

struct SubPointListCond {
    var points = String()
    var value = String()
}

