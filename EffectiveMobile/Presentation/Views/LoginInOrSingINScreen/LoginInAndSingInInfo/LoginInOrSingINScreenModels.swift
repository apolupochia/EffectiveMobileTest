//
//  LoginInOrSingINScreenModels.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 30.03.2023.
//

import Foundation

enum logAndPass : String { // for example
    case log = "123"
    case pass = "321"
    case email = "555"
}


struct InfoForLoginInIScreen  {
    var login : String
    var password  : String
    var email  : String
    
    var errorString : Bool
     
    var infoForTextFiel : [InfoForTextFieldInLoginOrSingScreen]
    
    init(login: String, password: String, email: String, errorString: Bool) {
        self.login = login
        self.password = password
        self.email = email
        self.errorString = errorString
        
        infoForTextFiel = [
                            InfoForTextFieldInLoginOrSingScreen(search: "", textForTextField: "", eye: false, hide: false),
                            InfoForTextFieldInLoginOrSingScreen(search: "", textForTextField: "", eye: true, hide: true)
                          ]
     //   self.infoForTextFiel = infoForTextFiel
    }
    
}

struct InfoForSingInScreen {
     var firstName : String
     var lastName  : String
     var email  : String
    
     var errorString : Bool
    
    var infoForTextFiel : [InfoForTextFieldInLoginOrSingScreen]
    
    init(firstName: String, lastName: String, email: String, errorString: Bool) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.errorString = errorString
        
        infoForTextFiel = [
                            InfoForTextFieldInLoginOrSingScreen(search: "", textForTextField: "", eye: false, hide: false),
                            InfoForTextFieldInLoginOrSingScreen(search: "", textForTextField: "", eye: false, hide: false),
                            InfoForTextFieldInLoginOrSingScreen(search: "", textForTextField: "", eye: false, hide: false)
                          ]
    }
    
    
}

struct InfoForTextFieldInLoginOrSingScreen : Identifiable{
    var id = UUID()
    var search : String
    let textForTextField : String
    let eye : Bool
    var hide : Bool
}
