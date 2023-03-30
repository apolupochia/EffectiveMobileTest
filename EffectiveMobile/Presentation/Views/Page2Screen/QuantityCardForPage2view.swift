//
//  QuantityCardForPage2view.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 22.03.2023.
//

import SwiftUI

struct QuantityCardForPage2view: View {
    var body: some View {
        VStack{
            Spacer()
            ZStack{
                Rectangle()
                    .frame(width: .infinity, height: 200)
                    .cornerRadius(30)
                firstThreeElem
                
                addToCard
                
            }
        }
        .frame(width: UIScreen.main.bounds.width)
        .ignoresSafeArea()
        
    }
    
    private var firstThreeElem : some View {
        HStack{
            VStack{
                Text("Quantity:")
                    .font(Font.custom("Montserrat-Medium", size: 10))
                    .opacity(0.7)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                HStack{
                    Button {

                    } label: {
                        ZStack{
                            Rectangle()
                                .frame(width: 50, height: 30)
                                .cornerRadius(10)
                            Image(systemName: "minus")
                                .resizable()
                                .frame(width: 12.5, height: 2)
                                .foregroundColor(.white)
                        }
                    }

                    Button {

                    } label: {
                        ZStack{
                            Rectangle()
                                .frame(width: 50, height: 30)
                                .cornerRadius(10)
                            Image(systemName: "plus")
                                .resizable()
                                .frame(width: 12.5, height: 12)
                                .foregroundColor(.white)

                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(maxHeight: 200, alignment: .top)
            .offset(y:30)


        }
        .padding(.leading, 32)
    }
    
    private var addToCard : some View {
        Button {
            
        } label: {
            ZStack{
                Rectangle()
                    .frame(width: 170, height: 60)
                    .cornerRadius(20)
                HStack{
                    Text("#2,500")
                        .foregroundColor(.white)
                        .font(Font.custom("Montserrat-Medium", size: 10))
                        .opacity(0.7)
                        .padding(.leading,16)
                    Spacer()
                    Text("ADD TO CART")
                        .foregroundColor(.white)
                        .font(Font.custom("Montserrat-Bold", size: 10))
                        .padding(.trailing, 16)
                }
                .frame(maxWidth: 170)
                
                
            }
        }
        .frame(maxWidth: .infinity, alignment: .trailing)
        .padding(.trailing, 32)
        .frame(maxHeight: 200, alignment: .top)
        .offset(y:30)
    }
}

struct QuantityCardForPage2view_Previews: PreviewProvider {
    static var previews: some View {
        QuantityCardForPage2view()
    }
}
