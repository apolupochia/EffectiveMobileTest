//
//  FirstCaruselForPage1View.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 20.03.2023.
//

import SwiftUI

struct FirstCaruselForPage1View: View {
    @ObservedObject var viewModel : Page1ViewModel
    @ObservedObject var coordinator : Coordinator
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
                if viewModel.curuselTwoPage1.flash_sale.count > 0 && viewModel.curuselOnePage1.latest.count > 0{
                    ForEach(viewModel.curuselOnePage1.latest, id: \.name) { item in
                        CardForFirstCaruselView(info: item, coordinator: coordinator)
                    }
                } else {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .gray))
                        .frame( width: UIScreen.main.bounds.size.width, height:  UIScreen.main.bounds.size.height / 6)
                }
            }
            
        }
        //.padding(.leading, 100)
    }
}

struct FirstCaruselForPage1View_Previews: PreviewProvider {
    static var previews: some View {
        FirstCaruselForPage1View(viewModel: Page1ViewModel(), coordinator: Coordinator())
    }
}


var choiseItemsHere = [
    DeviceItem(icon: "iphone", item: .phones),
    DeviceItem(icon: "headphones", item: .headPhones),
    DeviceItem(icon: "gamecontroller", item: .games),
    DeviceItem(icon: "car", item: .cars),
    DeviceItem(icon: "bed.double", item: .furniture),
    DeviceItem(icon: "tennisball", item: .kids)
]
