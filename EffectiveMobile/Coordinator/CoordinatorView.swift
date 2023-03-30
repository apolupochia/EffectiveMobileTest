//
//  CoordinatorView.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 29.03.2023.
//

import SwiftUI

struct CoordinatorView: View {
   
    @ObservedObject var coordinator : Coordinator
    var body: some View {
        Group{
            switch coordinator.loginOrMainViewCoordinator{
                
            case .loginOrSing:
                switch coordinator.loginOrSingCoordinator{
                case .loginIn:
                    LoginINScrren(coordinator: coordinator)
                    
                case .singIn:
                    SingInScreen(coordinator: coordinator)
                    
                }
                
            case .mainTab:
                
                ZStack{
                
                    switch coordinator.tabCoordinator{
                    case .home:
                        Page1Screen(coordinator: coordinator)
                   
                    case .heart:
                        Page1Screen(coordinator: coordinator)
                    case .basket:
                        Page1Screen(coordinator: coordinator)
                    case .sms:
                        Page1Screen(coordinator: coordinator)
                    case .person:
                        ProfileScreen(coordinator: coordinator)
                    }
                    
                    if coordinator.page2Coordinator == Page2IsVisible.visible{
                        Page2Screen( coordinator: coordinator)
                            .background(.white)
                    }
                    TabBar( coordinator: coordinator)
                    
                }
                
            }
        }
    }
}


struct CoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        CoordinatorView(coordinator: Coordinator())
    }
}
