//
//  ProfileScreen.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 20.03.2023.
//

import SwiftUI

struct ProfileScreen: View {
    @State var tab : Tab = .person
    @ObservedObject var coordinator : Coordinator
    var body: some View {
        VStack{
            ZStack{
                Button {
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 10, height: 10)
                        .foregroundColor(.black)
                }
                .frame(width: UIScreen.main.bounds.width - 32, alignment: .leading)
                .padding(.leading, 16)
          //      Spacer()
               
                Text("Profile")
                    .bold()
                    .font(Font.custom("Montserrat-Medium", size: 15))
                    .font(.callout)
                   // .frame(width: .infinity, alignment: .center)
                  //  .offset(x: -26)
             //   Spacer()
             //   Spacer()
            }
            .padding(.top, 16)
            Image("PrifilePhoto")
                .resizable()
                .frame(width: 50, height: 50)
                .mask(Circle())
            Button {
                
            } label: {
                Text("Change photo")
                    .font(Font.custom("Montserrat-Medium", size: 10))
                    .foregroundColor(.black)
                    .opacity(0.2)
            }
            Text("Satria Adhi Pradana")
                .bold()
                .font(Font.custom("Montserrat-Medium", size: 15))
                .padding(.top, 8)
            
            Button {
                
            } label: {
                HStack{
                    Spacer()
                    Image("send")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color(hex: "4f55cf"))
                    Spacer()
                    Text("Upload item")
                        .foregroundColor(.white)
                    Spacer()
                    Spacer() 
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity,minHeight: 45)
         //   .frame(width: 200, height: 50)
            .background(Color(hex: "4f55cf"))
            .cornerRadius(20)
            .padding(.trailing, UIScreen.main.bounds.size.width / 10)
            .padding(.leading, UIScreen.main.bounds.size.width / 10)
            .padding(.top, UIScreen.main.bounds.size.height / 32)
           // .foregroundColor(Color(hex: "4f55cf"))

            VStack(spacing: 20){
                ButtonForProfile(buttonString: "Trade store", imageName: "pay", boolChevron: true, coordinator: coordinator)
                ButtonForProfile(buttonString: "Payment method", imageName: "pay", boolChevron: true, coordinator: coordinator)
                ButtonForProfile(buttonString: "Balance", imageName: "pay", boolChevron: false, balance: true, coordinator: coordinator)
                ButtonForProfile(buttonString: "Trade history", imageName: "pay", boolChevron: true,coordinator: coordinator)
                ButtonForProfile(buttonString: "Restore Purchase", imageName: "restore", boolChevron: true,coordinator: coordinator)
                ButtonForProfile(buttonString: "Help", imageName: "question", boolChevron: false,coordinator: coordinator)
                ButtonForProfile(buttonString: "Log out", imageName: "logOut", boolChevron: false, coordinator: coordinator)
            }
            .padding(.leading, 16)
            .padding(.trailing, 16)
            Spacer()
         //   TabBar(selectedTab: $tab, coordinator: Coordinator())

        }
        .frame(maxHeight:.infinity)
        //.background(Color(hex: "e8e8e8"))
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen( coordinator: Coordinator())
    }
}
