//
//  EffectiveMobileApp.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 17.03.2023.
//

import SwiftUI

@main
struct EffectiveMobileApp: App {
    @StateObject var coordinator = Coordinator()
    var body: some Scene {
        WindowGroup {
            CoordinatorView(coordinator: coordinator)
        }
    }
}
