//
//  LoginINScrren.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 17.03.2023.
//

import SwiftUI

struct LoginINScrren: View {
    @ObservedObject var loginInInfo = LoginInAndSingInInfo()

    @ObservedObject var coordinator : Coordinator
    
    var body: some View {
            VStack{
                welcomeBackAndErrorData
                textFields
                loginButton
            }
            .padding(.trailing, UIScreen.main.bounds.size.width / 10)
            .padding(.leading, UIScreen.main.bounds.size.width / 10)
            .frame(maxHeight: .infinity, alignment: .top)
            .frame(maxWidth: UIScreen.main.bounds.width )
            .offset(y: UIScreen.main.bounds.size.height / 8)

    }

    
    private var welcomeBackAndErrorData : some View{
        VStack{
            Text("Welcome back")
                .font(Font.custom("Montserrat-Medium", size: 30))
            
            Text("Invalid email or password")
                .foregroundColor(.red)
                .padding(.top, 16)
                .opacity(loginInInfo.infoForLoginIn.errorString ? 1 : 0)
        }
    }
    
    private var textFields : some View {
        VStack{
            TextFieldForLogin(infoForLoginIn: loginInInfo )
            
         
        }

        .padding(.top, UIScreen.main.bounds.size.width / 10)
    }
    
    private var loginButton : some View {
        Button {
            if loginInInfo.infoForLoginIn.login == logAndPass.log.rawValue && loginInInfo.infoForLoginIn.password == logAndPass.pass.rawValue {
               
                coordinator.crossToMainTab()
                coordinator.crossToSingIn()
                
                loginInInfo.changeInfoForLoginInThenEmailIsValid()
            } else {
                loginInInfo.changeInfoForLoginInThenEmailIsNotValid()
            }
        } label: {
                Text("Login")
                .bold()
                .font(Font.custom("Montserrat-Medium", size: 15))
                .foregroundColor(.white)
                
               
        }
        .frame(minWidth: 0, maxWidth: .infinity,minHeight: 50)
        
        .background(Color(hex: "4f55cf"))
        .cornerRadius(10)
        .padding(.top, UIScreen.main.bounds.size.width / 10)
    }
}

struct LoginINScrren_Previews: PreviewProvider {
    static var previews: some View {
        LoginINScrren(coordinator: Coordinator())
    }
}



