//
//  CoordinatorModel.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 29.03.2023.
//

import Foundation
import Combine

protocol CoordinatorProtocol: AnyObject{
    var tabCoordinator : Tab { get set }
    var loginOrSingCoordinator : CoordinatorStart { get set }
    var loginOrMainViewCoordinator : CoordinatonStartOrMain { get set }
    var page2Coordinator : Page2IsVisible { get set }
    
    init()
    
    func crossToLoginIn()
    func crossToSingIn()
    func alreadyLoginOrSing()
    
    func crossToTab(tab : Tab)
    
    func crossToMainTab()
    func crossToLoginOrSing()
    
    func crossToPage2()
    func crossToMain()
}

class Coordinator : ObservableObject, CoordinatorProtocol {
    
    @Published var tabCoordinator : Tab
    @Published var loginOrSingCoordinator : CoordinatorStart
    @Published var loginOrMainViewCoordinator : CoordinatonStartOrMain
    @Published var page2Coordinator : Page2IsVisible
    
    required init(){
        self.tabCoordinator = Tab.home
        self.loginOrSingCoordinator = CoordinatorStart.singIn
        self.loginOrMainViewCoordinator = CoordinatonStartOrMain.loginOrSing
        self.page2Coordinator = Page2IsVisible.hidden
    }
    
    
    func crossToLoginIn(){
        loginOrSingCoordinator = CoordinatorStart.loginIn
    }
    
    func crossToSingIn(){
        loginOrSingCoordinator = CoordinatorStart.singIn
    }
    
    func alreadyLoginOrSing(){
        loginOrSingCoordinator = CoordinatorStart.singIn
    }
    
    func crossToTab(tab : Tab){
        tabCoordinator = tab
    }
    
    func crossToMainTab(){
        loginOrMainViewCoordinator = CoordinatonStartOrMain.mainTab
    }
    
    func crossToLoginOrSing(){
        loginOrMainViewCoordinator = CoordinatonStartOrMain.loginOrSing
    }
    
    func crossToPage2(){
        page2Coordinator = Page2IsVisible.visible
    }
    
    func crossToMain(){
        page2Coordinator = Page2IsVisible.hidden
    }
     
}

