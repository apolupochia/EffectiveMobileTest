//
//  ThirdCaruselForPage1View.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 21.03.2023.
//

import SwiftUI

struct ThirdCaruselForPage1View: View {
    @ObservedObject var viewModel : Page1ViewModel
    @ObservedObject var coordinator : Coordinator
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
                if viewModel.curuselTwoPage1.flash_sale.count > 0 && viewModel.curuselOnePage1.latest.count > 0{
                    ForEach(choiseItems) { item in
                        CardForThirdCaruselForPage1View()
                    }
                } else {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .gray))
                    .frame(width: UIScreen.main.bounds.size.width,height:  UIScreen.main.bounds.size.height / 6)
                }
            }
            
        }
    }
}

struct ThirdCaruselForPage1View_Previews: PreviewProvider {
    static var previews: some View {
        ThirdCaruselForPage1View(viewModel: Page1ViewModel(), coordinator: Coordinator())
    }
}
