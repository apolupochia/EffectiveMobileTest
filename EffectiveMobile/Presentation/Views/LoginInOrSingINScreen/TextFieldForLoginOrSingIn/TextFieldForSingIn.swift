//
//  TextFieldForSingIn.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 30.03.2023.
//

import SwiftUI

struct TextFieldForSingIn: View {
    
    @ObservedObject var infoForSingIn : LoginInAndSingInInfo
    var body: some View {
        VStack{
            textFieldHere(liginIn: infoForSingIn.infoForSingIn.infoForTextFiel[0], stringLog: $infoForSingIn.infoForSingIn.firstName, stringTextPreview: "First name", number: 0)
            textFieldHere(liginIn: infoForSingIn.infoForSingIn.infoForTextFiel[1], stringLog: $infoForSingIn.infoForSingIn.lastName, stringTextPreview: "Last name", number: 1)
            textFieldHere(liginIn: infoForSingIn.infoForSingIn.infoForTextFiel[2], stringLog: $infoForSingIn.infoForSingIn.email, stringTextPreview: "Email", number: 1)
    }
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
                        infoForSingIn.toogleIfNeedInfoForLoginIn(number: number)
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

struct TextFieldForSingIn_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldForSingIn(infoForSingIn: LoginInAndSingInInfo())
    }
}
