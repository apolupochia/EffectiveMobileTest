//
//  SecondCaruselForPage1View.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 21.03.2023.
//

import SwiftUI

struct SecondCaruselForPage1View: View {
   
    @ObservedObject var viewModel : Page1ViewModel
    @ObservedObject var coordinator : Coordinator
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
                if viewModel.curuselTwoPage1.flash_sale.count > 0 && viewModel.curuselOnePage1.latest.count > 0{
                    ForEach( viewModel.curuselTwoPage1.flash_sale, id: \.name) { item in
                        CardForSecondCaruselForPage1View(infoAboutTelephone: item, coordinator: coordinator)
                    }
                } else {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .gray))
                    .frame(width: UIScreen.main.bounds.size.width,height:  UIScreen.main.bounds.size.height / 4)
                    
                }
            }
           
        }
    }
}

struct SecondCaruselForPage1View_Previews: PreviewProvider {
    static var previews: some View {
        SecondCaruselForPage1View( viewModel: Page1ViewModel(), coordinator: Coordinator())
    }
}
