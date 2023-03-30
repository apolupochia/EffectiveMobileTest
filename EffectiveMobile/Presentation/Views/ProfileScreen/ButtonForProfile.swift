//
//  ButtonForProfile.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 20.03.2023.
//

import SwiftUI

struct ButtonForProfile: View {
    let buttonString : String
    let imageName : String
    let boolChevron : Bool
    var balance : Bool = false
    @ObservedObject var coordinator : Coordinator
    var body: some View {
 
            Button {
                if imageName == "logOut"{
                    coordinator.crossToLoginOrSing()
                    coordinator.crossToTab(tab: Tab.home)
                }
            } label: {
                HStack{
                    ZStack{
                        Circle()
                            .frame(width : 50, height: 50)
                            .foregroundColor(Color(hex: "e8e8e8"))
                        Image(imageName)
                            .resizable()
                            .frame(width : 30, height: 25)
                            .foregroundColor(.black)
                    }
                    Text(buttonString)
                        .foregroundColor(.black)
                        .padding(.leading, 16)
                    Spacer()
                    if boolChevron {
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width : 10, height: 15)
                            .foregroundColor(.black)
                    }
                    if balance == true && boolChevron == false{
                      Text("$ 1593")
                            .foregroundColor(.black)
                    }
                }
            
            }

          }

}

struct ButtonForProfile_Previews: PreviewProvider {
    static var previews: some View {
        ButtonForProfile(buttonString: "pay", imageName: "pay", boolChevron: false, balance: true, coordinator: Coordinator())
    }
}
