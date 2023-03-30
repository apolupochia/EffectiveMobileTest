//
//  CoordinatorModel.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 29.03.2023.
//

import Foundation
import Combine

enum CoordinatorTab {
    case page1
    case profile
}

enum CoordinatorStart {
    case loginIn
    case singIn
}

class Coordinator : ObservableObject{
    @Published var coordinatorStart = CoordinatorStart.singIn
    @Published var coordinatorTab = Tab.home
    @Published var coordinatorStarts = true
    @Published var page2 = false
    
    
    
}





