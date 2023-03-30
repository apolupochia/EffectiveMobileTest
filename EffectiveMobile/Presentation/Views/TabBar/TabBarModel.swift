//
//  TabBarModel.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 30.03.2023.
//

import Foundation


struct TabItem: Identifiable {
    var id = UUID()
    var icon: String
    var tab: Tab
}

var tabItems = [
    TabItem(icon: "home", tab: .home),
    TabItem(icon: "heart", tab: .heart),
    TabItem(icon: "basket", tab: .basket),
    TabItem(icon: "sms", tab: .sms),
    TabItem(icon: "person", tab: .person)


]

enum Tab: String {

    case home
    case heart
    case basket
    case sms
    case person
 //   case cart
}
