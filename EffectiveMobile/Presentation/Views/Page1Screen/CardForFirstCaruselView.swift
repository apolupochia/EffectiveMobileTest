//
//  CardForFirstCaruselView.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 20.03.2023.
//

import SwiftUI

struct CardForFirstCaruselView: View {
    let info : Latest
    @ObservedObject var coordinator : Coordinator
  //  let a = CGFloat((CGSize(width: 100, height: 100) as? CGFloat)!)
    var body: some View {
        
        
        Button {
            coordinator.page2 = true
        } label: {
            ZStack{
           
                
                
                
                //  Image("phone")
                
                AsyncImage(url: URL(string: info.image_url)) { image in
                    image
                        .resizable()
                        .frame(width: UIScreen.main.bounds.size.width / 3.5,height: UIScreen.main.bounds.size.height / 6)
                        .scaledToFill()
                } placeholder: {
                    //     Color.purple.opacity(0.1)
                }
                // .frame(width: 300, height: 500)
                //  .cornerRadius(20)
                
                
                //    .resizable()
                //  .frame(width: 140,height: 150)
                .frame(width: UIScreen.main.bounds.size.width / 3.5,height: UIScreen.main.bounds.size.height / 6)
                
                ZStack{
                    Rectangle()
                        .foregroundColor(Color(hex: "f5f7f6"))
                        .cornerRadius(9)
                        .frame(width: 40, height: 10)
                        .opacity(0.6)
                    Text(info.category)
                        .font(Font.custom("Montserrat-Bold", size: 6))
                        .foregroundColor(.black)
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .offset(x: UIScreen.main.bounds.size.width / 22, y: UIScreen.main.bounds.size.height / 48)
                
                Text(info.name)
                    .font(Font.custom("Montserrat-Bold", size: 8))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .offset(x: UIScreen.main.bounds.size.width / 22, y: UIScreen.main.bounds.size.height / 24)
                Text("$ \(info.price)")
                    .font(Font.custom("Montserrat-Bold", size: 5))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .offset(x: UIScreen.main.bounds.size.width / 22, y: UIScreen.main.bounds.size.height / 15)
                
                
                Button {
                    
                } label: {
                    ZStack{
                        Circle()
                            .frame(width: 15, height: 15)
                            .foregroundColor(Color(hex: "f5f7f6"))
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 7, height: 7)
                            .opacity(0.5)
                            .foregroundColor(.black)
                    }
                }
                
                
                .frame(maxWidth: .infinity,alignment: .trailing)
                .offset(x: -UIScreen.main.bounds.size.width / 22, y: UIScreen.main.bounds.size.height / 17)
                
            }
        }
        .frame(width: UIScreen.main.bounds.size.width / 3.5,height:  UIScreen.main.bounds.size.height / 6)
        .cornerRadius(20)
    }
}

struct CardForFirstCaruselView_Previews: PreviewProvider {
    static var previews: some View {
        CardForFirstCaruselView(info: Latest(category: "Phones", name: "Samsung S10", price: 1000, image_url: "https://www.dhresource.com/0x0/f2/albu/g8/M01/9D/19/rBVaV1079WeAEW-AAARn9m_Dmh0487.jpg"), coordinator: Coordinator())
    }
}
