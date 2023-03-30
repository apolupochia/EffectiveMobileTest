//
//  CoordinatorView.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 29.03.2023.
//

import SwiftUI

struct CoordinatorView: View {
    @State var tab = Tab.home
    @StateObject var coordinator = Coordinator()
    var body: some View {
        Group{
            if coordinator.coordinatorStarts{
                switch coordinator.coordinatorStart{
                case .loginIn:
                    LoginINScrren(coordinator: coordinator)
                    
                case .singIn:
                    SingInScreen(coordinator: coordinator)
                    
                }
            } else {
                
                ZStack{
                
                    switch coordinator.coordinatorTab{
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
                    
                    if coordinator.page2{
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
        CoordinatorView()
    }
}
