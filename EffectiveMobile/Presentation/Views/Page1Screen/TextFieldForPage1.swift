//
//  TextFieldForPage1.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 20.03.2023.
//

import SwiftUI

struct TextFieldForPage1: View {
    @ObservedObject var viewModel : Page1ViewModel
    let textForTextField : String
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(hex: "f5f7f6"))
                .cornerRadius(15)
                .frame(height: 30)
            
            HStack{
                TextField(textForTextField, text: $viewModel.search)
                
                    
                    .font(Font.custom("Montserrat-Medium", size: 13))
                    .frame(height: 10)
                    .multilineTextAlignment(.center)
                    .padding(EdgeInsets(top: 5, leading: 16, bottom: 5, trailing: 16))
                    .background(Color(hex: "f5f7f6"))
                    .cornerRadius(20)
               
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .padding(.trailing, 16)
                   // .frame(maxWidth: .infinity)
            }
            
        }
    }
}

struct TextFieldForPage1_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldForPage1(viewModel: Page1ViewModel(), textForTextField: "Search")
    }
}





//ZStack{
//    TextField(textForTextField, text: $search)
//
//
//        .font(.callout)
//
//        .multilineTextAlignment(.center)
//        .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
//        .background(Color(hex: "e8e8e8"))
//        .cornerRadius(20)
//    Image(systemName: "magnifyingglass")
//        .resizable()
//        .frame(width: 20, height: 20)
//        .frame(maxWidth: .infinity)
//
//}
