//
//  ProductDescriptionAndColorSelectionView.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 22.03.2023.
//

import SwiftUI

struct ProductDescriptionAndColorSelectionView: View {
    var body: some View {
        VStack{
            HStack{
                Text("New balance")
                    .font(Font.custom("Montserrat-Bold", size: 20))
                Spacer()
                Text("$ 22.50")
                    .font(Font.custom("Montserrat-Bold", size: 15))
               
            }
            .padding( .trailing,16)
            Text("Sneakers")
                .font(Font.custom("Montserrat-Bold", size: 15))
                .frame(maxWidth: .infinity, alignment: .leading)
                //.offset(y: )
                .padding( .bottom,6)
                
            Text("Future waterproof, fire, air resistant shoes. all changes when we country of fire attaced")
                .font(.caption2)
                .opacity(0.5)
                .frame(width: UIScreen.main.bounds.size.width / 1.6)
                .frame(maxWidth: .infinity, alignment: .leading)
              
            HStack{
                Button {
                    
                } label: {
                    Image(systemName: "star")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .foregroundColor(.yellow)
                }
                Text("3.9")
                    .font(Font.custom("Montserrat-Bold", size: 10))
                Text("(4000 reviews)")
                    .font(.caption2)
                    .opacity(0.5)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("Color")
                .font(.caption)
                .opacity(0.5)
                .frame(maxWidth: .infinity, alignment: .leading)

            HStack{
                Button {
                    
                } label: {
                    Rectangle()
                        .frame(width: 35, height: 25)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .stroke()
                            .fill(.black.opacity(1))
                        )
                }
                
                Button {
                    
                } label: {
                    Rectangle()
                        .frame(width: 35, height: 25)
                        .cornerRadius(20)
                        .foregroundColor(.gray)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .stroke()
                            .fill(.black.opacity(1))
                        )
                }
                
                Button {
                    
                } label: {
                    Rectangle()
                        .frame(width: 35, height: 25)
                        .cornerRadius(20)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .stroke()
                            .fill(.black.opacity(1))
                        )
                }

                
                
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
          //  .padding(.leading,16)
            

        }
        .padding(.leading, 16)
        
       // .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductDescriptionAndColorSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDescriptionAndColorSelectionView()
    }
}
