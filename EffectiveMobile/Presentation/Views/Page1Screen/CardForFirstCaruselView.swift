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
    var body: some View {

        
        Button {
            coordinator.crossToPage2()
        } label: {
            ZStack{
                image
                categoryOfPhine
                namePriceAndButtonOfPhone
                
            }
        }
        .frame(width: UIScreen.main.bounds.size.width / 3.5,height:  UIScreen.main.bounds.size.height / 6)
        .cornerRadius(20)
    }
    
    
    
    
    
    
    
    
    private var image : some View{
        AsyncImage(url: URL(string: info.image_url)) { phase in
            if let image = phase.image{
                image
                    .resizable()
                    .frame(width: UIScreen.main.bounds.size.width / 3.5,height: UIScreen.main.bounds.size.height / 6)
                    .scaledToFill()
            } else {
                ProgressView()
                    .frame(width: 15, height: 15)
            }
        }
    }
    
    private var categoryOfPhine : some View{
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
        
        
        
    }
    
    private var namePriceAndButtonOfPhone : some View{
        ZStack{
            
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
    
}

struct CardForFirstCaruselView_Previews: PreviewProvider {
    static var previews: some View {
        CardForFirstCaruselView(info: Latest(category: "Phones", name: "Samsung S10", price: 1000, image_url: "https://www.dhresource.com/0x0/f2/albu/g8/M01/9D/19/rBVaV1079WeAEW-AAARn9m_Dmh0487.jpg"), coordinator: Coordinator())
    }
}
