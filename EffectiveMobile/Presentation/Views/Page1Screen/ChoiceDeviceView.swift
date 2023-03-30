//
//  ChoiceDeviceView.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 20.03.2023.
//

import SwiftUI

struct ChoiceDeviceView: View {
    var body: some View {
        HStack{
            Spacer()
            ForEach(choiseItems) { item in
                Button {
                    
                } label: {
                    VStack{
                        ZStack{
                            Circle()
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color(hex: "eeeff4"))
                            
                            Image(item.icon)
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.black)
                            
                        }
                        Text(item.item.rawValue)
                            .font(Font.custom("Montserrat-Medium", size: 8))
                            .foregroundColor(Color(hex: "c3c2c7"))
                    }
                    
                }
                Spacer()
                
                
            }
            
        }
    }
}

struct ChoiceDeviceView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceDeviceView()
    }
}



var choiseItems = [
    DeviceItem(icon: "telephone", item: .phones),
    DeviceItem(icon: "headPhones", item: .headPhones),
    DeviceItem(icon: "games", item: .games),
    DeviceItem(icon: "cars", item: .cars),
    DeviceItem(icon: "furniture", item: .furniture),
    DeviceItem(icon: "kidsImage", item: .kids)
]

struct DeviceItem: Identifiable {
    var id = UUID()
    var icon: String
    var item: Item
}

enum Item: String {

    case phones
    case headPhones
    case games
    case cars
    case furniture
    case kids
}
