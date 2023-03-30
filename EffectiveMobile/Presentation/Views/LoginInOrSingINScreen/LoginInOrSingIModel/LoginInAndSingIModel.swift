//
//  LoginInAndSingIModel.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 30.03.2023.
//

import Foundation
import Combine

class LoginInAndSingIModel : ObservableObject{
    @Published var login : String
    @Published var password  : String
    @Published var email  : String
    
    @Published var errorSing : Bool
    
    init() {
        self.login = ""
        self.password = ""
        self.email = ""
        errorSing = false
    }
    
}

enum logAndPass : String {
    case log = "123"
    case pass = "321"
    case email = "555"
}


