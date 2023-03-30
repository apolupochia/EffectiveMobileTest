//
//  LoginInAndSingIModel.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 30.03.2023.
//

import Foundation
import Combine

protocol LoginInAndSingInInfoProtocol : AnyObject {
    var infoForLoginIn : InfoForLoginInIScreen { get set }
    var infoForSingIn : InfoForSingInScreen { get set }
    
    init()
    
    func changeInfoForSingInThenEmailIsValid()
    func changeInfoForSingInThenEmailIsNotValid()
    
    func changeInfoForLoginInThenEmailIsValid()
    func changeInfoForLoginInThenEmailIsNotValid()
    
}

class LoginInAndSingInInfo : ObservableObject , LoginInAndSingInInfoProtocol {
    @Published var infoForLoginIn : InfoForLoginInIScreen
    @Published var infoForSingIn : InfoForSingInScreen
    
    required init() {
        infoForLoginIn = InfoForLoginInIScreen(login: "", password: "", email: "", errorString: false)
        infoForSingIn = InfoForSingInScreen(firstName: "", lastName: "", email: "", errorString: false)
        
    }
    
    func changeInfoForSingInThenEmailIsValid(){
        infoForSingIn.email = ""
        infoForSingIn.firstName = ""
        infoForSingIn.lastName = ""
        infoForSingIn.errorString = false
        
    }
    
    func changeInfoForSingInThenEmailIsNotValid(){
        infoForSingIn.errorString = true
    }
    
    func changeInfoForLoginInThenEmailIsValid(){
        infoForLoginIn.login = ""
        infoForLoginIn.password = ""
        infoForLoginIn.errorString = false
        
    }
    
    func changeInfoForLoginInThenEmailIsNotValid(){
        infoForLoginIn.errorString = true
    }
    
    func toogleIfNeedInfoForLoginIn(number : Int){
        if infoForLoginIn.infoForTextFiel[number].hide{
            infoForLoginIn.infoForTextFiel[number].hide = false
        } else {
            infoForLoginIn.infoForTextFiel[number].hide = true
        }
    }
    
    func toogleIfNeedInfoForSingIn(number : Int){
        
        if infoForSingIn.infoForTextFiel[number].hide{
            infoForSingIn.infoForTextFiel[number].hide = false
        } else {
            infoForSingIn.infoForTextFiel[number].hide = true
        }
    }
    
}




