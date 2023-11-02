//
//  AdditionalInfoModel.swift
//  WHO
//
//  Created by Apple on 01/11/23.
//

import Foundation

struct AdditionalInfoModel{
    var additionalContent = String()
    var additionalTitle = String()
    var clazz = ""
    var additionalSubPoint = [AdditionalSubPoint]()
}

struct AdditionalSubPoint {
    var additionSubPoint = String()
    var additionSubPointName = String()
    var list = [SubPointList]()
    var isClose = ""
}

struct SubPointList{
    var points = String()
    var value = String()
}
