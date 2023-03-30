//
//  CardForCarusel.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 21.03.2023.
//

import SwiftUI

struct CardForCarusel: View {
    var data : infoForCarusel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            ZStack{
                
                image
                contextBackground
            }
        }
        .frame(width: UIScreen.main.bounds.width - 30, height: data.largeSize ? 300 : 240)
        .background(Color.white)
        .cornerRadius(25)
    }
    
    
    
    
    
    
    
    private var image : some View{
        AsyncImage(url: URL(string: data.imageString)) { phase in
            if let image = phase.image{
                image
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width - 30, height: data.largeSize ? 300 : 240)
                    .scaledToFill()
            } else {
                ProgressView()
                    .frame(width: 15, height: 15)
            }
        }
    }
    
    private var contextBackground : some View {
        ZStack{
            Rectangle()
                .frame(width: 30, height: 70)
                .cornerRadius(15)
                .foregroundColor(Color(hex: "e5e8ef"))
            VStack{
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .foregroundColor(.black)
                        
                }
                Rectangle()
                    .frame(width: 10, height: 1)
                    .cornerRadius(15)
                    .foregroundColor(.black)
                Button {
                    
                } label: {
                    Image("sett")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .foregroundColor(.gray)
                }
            }
           
            
        }
        .offset(x:UIScreen.main.bounds.width / 3 )
        .offset(y:UIScreen.main.bounds.height / 10 )
    }
}

struct CardForCarusel_Previews: PreviewProvider {
    static var previews: some View {
        CardForCarusel(data: infoForCarusel(imageString: "https://assets.reebok.com/images/h_2000,f_auto,q_auto,fl_lossy,c_fill,g_auto/3613ebaf6ed24a609818ac63000250a3_9366/Classic_Leather_Shoes_-_Toddler_White_FZ2093_01_standard.jpg", largeSize: true))
    }
}

