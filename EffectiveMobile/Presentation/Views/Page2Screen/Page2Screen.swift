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
    var body: some View {
        ZStack{
            
            firstSecondCarusekAndDescription
            backButton
            QuantityCardForPage2view()
        }
        .frame(width: UIScreen.main.bounds.size.width)
    }
    
    private var firstSecondCarusekAndDescription : some View{
        VStack{

            CaruselForPage2View(viewModel: viewModel)
                .frame(width: UIScreen.main.bounds.size.width, height: 350)
            SecondCarurelForPage2(viewModel: viewModel)
                .frame( width: UIScreen.main.bounds.size.width, height: 60)
                .padding(.top,24)
            ProductDescriptionAndColorSelectionView()
                .padding(.top,32)
                .frame( width: UIScreen.main.bounds.size.width, height: 185)
           Spacer()
        }
        .ignoresSafeArea()
    }
    
    private var backButton : some View{
        Button {
            coordinator.crossToMain()
        } label: {
            ZStack{
                Circle()
                    .frame(width: 30,height: 35)
                    .opacity(0)
                Image(systemName: "chevron.left")
                    .resizable()
                    .frame(width: 10,height: 15)
            }
        }
        .frame(maxWidth: .infinity,alignment: .leading)
        .frame(maxHeight: .infinity,alignment: .top)
        .padding(.leading, 16)
    }
}

struct Page2Screen_Previews: PreviewProvider {
    static var previews: some View {
        Page2Screen( coordinator: Coordinator())
    }
}
