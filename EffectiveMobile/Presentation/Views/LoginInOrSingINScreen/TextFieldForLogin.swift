//
//  TextFieldForLogin.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 19.03.2023.
//

import SwiftUI

struct TextFieldForLogin: View {
    @Binding var search : String
    let textForTextField : String
    let eye : Bool
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(hex: "e8e8e8"))
                .cornerRadius(9)
                .frame(height: 38)
            
            HStack{
                TextField(textForTextField, text: $search)
                
                    .offset(x : eye ? 20 : 0)
                    .font(.callout)
                    .frame(height: 10)
                    .multilineTextAlignment(.center)
                    .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                    .background(Color(hex: "e8e8e8"))
                    .cornerRadius(20)
                if eye{
                    Button {
                        
                    } label: {
                        Image("eye")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(.trailing, 16)
                        // .frame(maxWidth: .infinity)
                    }
                }
              
            }
            
        }
    }
}

struct TextFieldForLogin_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldForLogin(search: .constant(""), textForTextField: "Search", eye: true)
    }
}
