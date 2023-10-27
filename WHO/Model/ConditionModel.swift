//
//  ConditionModel.swift
//  WHO
//
//  Created by Durgesh on 18/10/23.
//

import Foundation


struct ConditionsModel {
    var conditionTitle = String()
    var subViewType = Int()
    var content = String()
    var checkBoxContent = String()
    var checkBoxContent2 = String()
    var age = String()
    var list = [ConditionProgressModel]()
    var isArrow = Bool()
    var list1 = [ConditionProgressModel]()
    var list2 = [ConditionProgressModel]()
    var checkBoxContent3 = String()
    var options = String()
    var viewPos = -1
    var selectedPos = -1
    var isSelected = Bool()
    var isSelected1 = Bool()
    var isSelected2 = Bool()
    var isAlreadySelected = Int()}

struct ConditionProgressModel {
    var progressTitle = String()
    var progressValS = String()
    var progressValueF = Float()
    var subTitle = String()
    var desc = String()
    var icon = String()
    var isHTML = Bool()
    var isSelected = Bool()
    var contraceptualChoicesModel: ContraceptualChoicesModel?
}

struct ContraceptualChoicesModel {
    var image = String()
    var title = String()
    var issueName1 = String()
    var issueImg1 = String()
    var issueName2 = String()
    var issueImg2 = String()
    var issueName3 = String()
    var issueImg3 = String()
    var progressTitle = String()
    var progressPercent = String()
    var desc = String()
    var howItWorks = String()
    var list = [ContraceptualContentModel]()
    var detailIcon = String()
    var layoutParams = String()
    var progressVal = String()
    var progresscontent = Bool()
}

struct ContraceptualContentModel {
    var bullet = Bool()
    var title = String()
    var content = String()
    var bulletValue = String()
}

struct ConditionNoteModel {
    var image = String()
    var title = String()
    var description = String()
}
