//
//  AdditionalModel.swift
//  WHO
//
//  Created by Durgesh on 25/10/23.
//


struct AdditionalModel {
    var title = String()
    var description = String()
    var subModels = [AdditionalSubModel]()
}

struct AdditionalSubModel {
    var title = String()
    var description = String()
    var list = [PointValueModel]()
}

struct PointValueModel {
    var point = String()
    var value = String()
}
