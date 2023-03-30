//
//  CardForSecondCaruselForPage1View.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 21.03.2023.
//

import SwiftUI

struct CardForSecondCaruselForPage1View: View {
    let infoAboutTelephone : FlashSale
    @ObservedObject var coordinator : Coordinator
    var body: some View {
        Button {
            coordinator.page2 = true
            
        } label: {
            
            
            
            ZStack{
                AsyncImage(url: URL(string: infoAboutTelephone.image_url)) { image in
                    image
                        .resizable()
                        .frame(width: UIScreen.main.bounds.size.width / 2.1,height:  UIScreen.main.bounds.size.height / 4)
                       // .scaledToFill()
                } placeholder: {
                    //     Color.purple.opacity(0.1)
                }
                
                
                
                Image("PrifilePhoto")
                    .resizable()
                    .frame(width: 20, height:20)
                //  .foregroundColor(.gray)
                    .cornerRadius(10)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .offset(x: UIScreen.main.bounds.size.width / 15, y: -UIScreen.main.bounds.size.height / 11)
                ZStack{
                    Rectangle()
                        .frame(width: 40, height:15)
                        .cornerRadius(7.5)
                        .foregroundColor(.red)
                    Text("\(infoAboutTelephone.discount)% off")
                        .font(Font.custom("Montserrat-Medium", size: 8))
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity,alignment: .trailing)
                .offset(x: -UIScreen.main.bounds.size.width / 15, y: -UIScreen.main.bounds.size.height / 11)
                
                ZStack{
                    Rectangle()
                        .foregroundColor(Color(hex: "f5f7f6"))
                        .cornerRadius(9)
                        .frame(width: 50, height: 15)
                        .opacity(0.6)
                    Text(infoAboutTelephone.category)
                        .font(Font.custom("Montserrat-Medium", size: 11))
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .offset(x: UIScreen.main.bounds.size.width / 18, y: UIScreen.main.bounds.size.height / 48)
                
                Text(infoAboutTelephone.name)
                    .font(Font.custom("Montserrat-Medium", size: 11))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .offset(x: UIScreen.main.bounds.size.width / 18, y: UIScreen.main.bounds.size.height / 18)
                Text("Sneakers")
                    .font(Font.custom("Montserrat-Medium", size: 11))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .offset(x: UIScreen.main.bounds.size.width / 18, y: UIScreen.main.bounds.size.height / 13)
                Text("$ \(infoAboutTelephone.price)")
                    .font(Font.custom("Montserrat-Medium", size: 11))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .offset(x: UIScreen.main.bounds.size.width / 18, y: UIScreen.main.bounds.size.height / 10)
                
                Button {
                    
                } label: {
                    ZStack{
                        Circle()
                            .frame(width: 13,height: 13)
                            .foregroundColor(Color(hex: "f5f7f6"))
                        Image(systemName: "heart")
                            .resizable()
                            .frame(width: 7, height: 7)
                            .opacity(0.7)
                            .foregroundColor(.gray)
                    }
                }
                
                
                .frame(maxWidth: .infinity,alignment: .trailing)
                .offset(x: -UIScreen.main.bounds.size.width / 11, y: UIScreen.main.bounds.size.height / 10.5)
                Button {
                    
                } label: {
                    ZStack{
                        Circle()
                            .frame(width: 15, height: 15)
                            .foregroundColor(Color(hex: "f5f7f6"))
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 10, height: 10)
                            .opacity(0.7)
                            .foregroundColor(.gray)
                    }
                }
                
                
                .frame(maxWidth: .infinity,alignment: .trailing)
                .offset(x: -UIScreen.main.bounds.size.width / 25, y: UIScreen.main.bounds.size.height / 10.5)
                
            }
//            .frame(width: UIScreen.main.bounds.size.width / 2.5,height:  UIScreen.main.bounds.size.height / 4)
//            .cornerRadius(20)
        }
        .frame(width: UIScreen.main.bounds.size.width / 2.1,height:  UIScreen.main.bounds.size.height / 4)
        .cornerRadius(20)
     //   .background(.gray)
    }
}

struct CardForSecondCaruselForPage1View_Previews: PreviewProvider {
    static var previews: some View {
        CardForSecondCaruselForPage1View(infoAboutTelephone: FlashSale(category: "Kids", name: "New Balance Sneakers", price: 22.5 , discount: 30, image_url: "https://newbalance.ru/upload/iblock/697/iz997hht_nb_02_i.jpg"), coordinator: Coordinator())
    }
}
