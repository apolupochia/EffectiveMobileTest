//
//  TextFieldForLogin.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 19.03.2023.
//

import SwiftUI

struct TextFieldForLogin: View {
    @ObservedObject var infoForLoginIn : LoginInAndSingInInfo

    var body: some View {
        textFieldHere(liginIn: infoForLoginIn.infoForLoginIn.infoForTextFiel[0], stringLog: $infoForLoginIn.infoForLoginIn.login, stringTextPreview: "First name", number: 0)
        textFieldHere(liginIn: infoForLoginIn.infoForLoginIn.infoForTextFiel[1], stringLog: $infoForLoginIn.infoForLoginIn.password, stringTextPreview: "Password", number: 1)
    }
    
    private func textFieldHere(liginIn : InfoForTextFieldInLoginOrSingScreen, stringLog : Binding<String> , stringTextPreview : String, number : Int) -> some View{
        ZStack {
            Rectangle()
                .foregroundColor(Color(hex: "e8e8e8"))
                .cornerRadius(9)
                .frame(height: 38)
            
            HStack{
                
                
                if liginIn.hide {
                    SecureField( stringTextPreview, text: stringLog)
                        .offset(x : liginIn.eye ? 20 : 0)
                        .font(.callout)
                        .frame(height: 10)
                        .multilineTextAlignment(.center)
                        .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                        .background(Color(hex: "e8e8e8"))
                        .cornerRadius(20)
                } else {
                    TextField(stringTextPreview, text: stringLog)
                    
                        .offset(x : liginIn.eye ? 20 : 0)
                        .font(.callout)
                        .frame(height: 10)
                        .multilineTextAlignment(.center)
                        .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                        .background(Color(hex: "e8e8e8"))
                        .cornerRadius(20)
                }
                
                
                    
                
                if liginIn.eye{
                    Button {
                        infoForLoginIn.toogleIfNeedInfoForLoginIn(number: number)
                    } label: {
                        Image("eye")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(.trailing, 16)
                    }
                }
              
            }
            
        }
    }
}

struct TextFieldForLogin_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldForLogin(infoForLoginIn: LoginInAndSingInInfo())
    }
}
