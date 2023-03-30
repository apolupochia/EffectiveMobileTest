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
                
                AsyncImage(url: URL(string: data.imageString)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
               //     Color.purple.opacity(0.1)
                }
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
        .frame(width: UIScreen.main.bounds.width - 30, height: data.largeSize ? 300 : 240)
     //   .frame(width: UIScreen.main.bounds.width - 30, height:  300 )
        .background(Color.white)
        .cornerRadius(25)
    }
}

struct CardForCarusel_Previews: PreviewProvider {
    static var previews: some View {
        CardForCarusel(data: infoForCarusel(imageString: "", largeSize: false))
    }
}


struct Card : Identifiable {
    
    var id : Int
    var img : String
    var name : String
    var show : Bool
}
