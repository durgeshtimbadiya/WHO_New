//
//  NavigationListModel.swift
//  WHO
//
//  Created by Apple on 01/11/23.
//

import Foundation

struct NavigationListModel{
    var title = String()
    var id = Int()
    var list = [NavigationSubListModel]()
    var clazz = ""
    var icon = String()
}

struct NavigationSubListModel{
    var subListTitle = String()
    var subListId = Int()
    var clazz = ""
}
