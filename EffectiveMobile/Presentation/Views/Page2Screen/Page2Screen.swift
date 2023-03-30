//
//  Page2Screen.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 21.03.2023.
//

import SwiftUI

struct Page2Screen: View {
    @StateObject var viewModel = Page2ViewModel()
    @ObservedObject var coordinator : Coordinator
//    @State var tab = Tab.person
    var body: some View {
        ZStack{
            
            VStack{
              
                
                
                CaruselForPage2View(viewModel: viewModel)
                  //  .frame(maxHeight: .infinity,alignment: .top)
                    .frame(width: UIScreen.main.bounds.size.width, height: 350)
                 //   .frame(width: .infinity,height: 350)
                SecondCarurelForPage2(viewModel: viewModel)
                    .frame( width: UIScreen.main.bounds.size.width, height: 60)
                    .padding(.top,24)
                
                ProductDescriptionAndColorSelectionView()
                    .padding(.top,32)
                    .frame( width: UIScreen.main.bounds.size.width, height: 185)
                
               Spacer()
                
                
            }
            .ignoresSafeArea()
            Button {
                coordinator.page2 = false
            } label: {
                ZStack{
                    Circle()
                        .frame(width: 30,height: 35)
                        .opacity(0)
                    Image(systemName: "chevron.left")
                        .resizable()
                        .frame(width: 10,height: 15)
                }

                  //  .foregroundColor(.yellow)
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            .frame(maxHeight: .infinity,alignment: .top)
            .padding(.leading, 16)
            QuantityCardForPage2view()
        //    TabBar( coordinator: Coordinator())
        }
        .frame(width: UIScreen.main.bounds.size.width)
       // .frame(width: .infinity)
       // .ignoresSafeArea()
    }
}

struct Page2Screen_Previews: PreviewProvider {
    static var previews: some View {
        Page2Screen( coordinator: Coordinator())
    }
}
