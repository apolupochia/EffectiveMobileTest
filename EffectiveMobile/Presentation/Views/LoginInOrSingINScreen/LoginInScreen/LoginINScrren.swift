//
//  LoginINScrren.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 17.03.2023.
//

import SwiftUI

struct LoginINScrren: View {
    @ObservedObject var singInInfo = LoginInAndSingIModel()

    @ObservedObject var coordinator : Coordinator
    


    var body: some View {
        
     
            VStack{
                Text("Welcome back")
                    .font(Font.custom("Montserrat-Medium", size: 30))
                    
                Text("Invalid email")
                    .foregroundColor(.red)
                    .padding(.top, 16)
                    .opacity(singInInfo.errorSing ? 1 : 0)
                VStack{
                    TextFieldForLogin(search: $singInInfo.login, textForTextField: "First name", eye: false)
                        
                        
                    TextFieldForLogin(search: $singInInfo.password, textForTextField: "password", eye: true)
                        .padding(.top, 16)
                 
                }

                .padding(.top, UIScreen.main.bounds.size.width / 10)
                
                Button {
                    if singInInfo.login == logAndPass.log.rawValue && singInInfo.password == logAndPass.pass.rawValue {
                        singInInfo.errorSing = false
                        coordinator.coordinatorStarts = false
                        coordinator.coordinatorStart = CoordinatorStart.singIn
                        singInInfo.login = ""
                        singInInfo.password = ""
                    } else {
                        singInInfo.errorSing = true
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

            
            .padding(.trailing, UIScreen.main.bounds.size.width / 10)
               .padding(.leading, UIScreen.main.bounds.size.width / 10)
            
            .frame(maxHeight: .infinity, alignment: .top)
        .frame(maxWidth: UIScreen.main.bounds.width )
        .offset(y: UIScreen.main.bounds.size.height / 8)
            
 
        

    }
}

struct LoginINScrren_Previews: PreviewProvider {
    static var previews: some View {
        LoginINScrren(coordinator: Coordinator())
    }
}



