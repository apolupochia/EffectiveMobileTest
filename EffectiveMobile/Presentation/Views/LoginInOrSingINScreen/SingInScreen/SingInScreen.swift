//
//  SingInScreen.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 20.03.2023.
//

import SwiftUI

struct SingInScreen: View {
    
    @ObservedObject var singInInfo = LoginInAndSingIModel()


    @ObservedObject var coordinator : Coordinator
    var body: some View {
        

            VStack{
                Text("Sing In")
                    .bold()
                    .font(Font.custom("Montserrat-Medium", size: 30))
                   // .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top, UIScreen.main.bounds.size.width / 5)
                    
                    Text("Invalid email")
                        .foregroundColor(.red)
                        .padding(.top, 16)
                        .opacity(singInInfo.errorSing ? 1 : 0)

                VStack{
                    TextFieldForLogin(search: $singInInfo.login, textForTextField: "First name", eye: false)
                        .padding(.trailing, UIScreen.main.bounds.size.width / 10)
                        .padding(.leading, UIScreen.main.bounds.size.width / 10)
                        
                    TextFieldForLogin(search: $singInInfo.password, textForTextField: "Last name", eye: false)
                        .padding(.trailing, UIScreen.main.bounds.size.width / 10)
                        .padding(.leading, UIScreen.main.bounds.size.width / 10)
                        .padding(.top, UIScreen.main.bounds.size.height / 35)
                    TextFieldForLogin(search: $singInInfo.email, textForTextField: "Email", eye: false)
                        .padding(.trailing, UIScreen.main.bounds.size.width / 10)
                        .padding(.leading, UIScreen.main.bounds.size.width / 10)
                        .padding(.top, UIScreen.main.bounds.size.height / 35)
                }
                .padding(.top, UIScreen.main.bounds.size.width / 10)
                Button {
                    if isValidEmail(singInInfo.email) {
                        
                        coordinator.coordinatorStart = CoordinatorStart.singIn
                        coordinator.coordinatorStarts = false
                        singInInfo.errorSing = false
                        singInInfo.login = ""
                        singInInfo.password = ""
                        singInInfo.email = ""
                    } else {
                        singInInfo.errorSing = true
                    }
                } label: {
                        Text("Sing in")
                        .bold()
                        .font(Font.custom("Montserrat-Medium", size: 15))
                        .foregroundColor(.white)
                        
                       
                }
                .frame(minWidth: 0, maxWidth: .infinity,minHeight: 50)
                
                .background(Color(hex: "4f55cf"))
                .cornerRadius(10)
                .padding(.trailing, UIScreen.main.bounds.size.width / 10)
                .padding(.leading, UIScreen.main.bounds.size.width / 10)
                .padding(.top, UIScreen.main.bounds.size.height / 35)
          //      .offset(y: UIScreen.main.bounds.size.height / 3.8)
                HStack{
                    Text("Already have account")
                        .font(Font.custom("Montserrat-Medium", size: 10))
                        .opacity(0.5)
                   
                    Button {
                        coordinator.coordinatorStart = CoordinatorStart.loginIn
                    } label: {
                        Text("Login in")
                            .font(Font.custom("Montserrat-Medium", size: 10))
                    }

                        
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, UIScreen.main.bounds.size.width / 10)
                .padding(.top, UIScreen.main.bounds.size.height /  200)
               
                HStack{
                    Button {
                        
                        
                    } label: {
                        Image( "google")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .opacity( 1 )
                            .foregroundColor(.blue)
                          
                        Text("Sing in with Google")
                            .font(Font.custom("Montserrat-Medium", size: 13))
                            .foregroundColor(.black)
                    }

                   
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, UIScreen.main.bounds.size.width / 3.7)
                .padding(.top, UIScreen.main.bounds.size.height / 30)
                HStack{
                    Button {
                        
                    } label: {
                        Image( "apple")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .opacity( 1 )
                            .foregroundColor(.blue)
                          
                        Text("Sing in with Apple")
                            .font(Font.custom("Montserrat-Medium", size: 13))
                            .foregroundColor(.black)
                    }

                   
                }
                
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, UIScreen.main.bounds.size.width / 3.7)
                .padding(.top, UIScreen.main.bounds.size.height / 45)
                
                
                
                .frame(maxHeight: .infinity, alignment: .top)
                
                
                
            }
  

        
    }
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
}

struct SingInScreen_Previews: PreviewProvider {
    static var previews: some View {
        SingInScreen(coordinator: Coordinator())
    }
}
