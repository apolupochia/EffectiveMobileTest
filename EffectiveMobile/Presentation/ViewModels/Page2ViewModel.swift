//
//  Page2ViewModel.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 27.03.2023.
//

import Foundation
import Combine
import SwiftUI

struct infoCarusel {
    var count : Int
    var info : [infoForCarusel]
}

struct infoForCarusel : Identifiable {
    let id = UUID()
  
    let imageString : String
    var largeSize : Bool

}

struct InfoForCarusel1{
    var x : CGFloat
   // @State var x : CGFloat = -(UIScreen.main.bounds.width - 15)
    var count : CGFloat
    var screen : CGFloat
    var op : CGFloat
    
    var num : Int
}


class Page2ViewModel: ObservableObject {
//    @Published var curuselOnePage1 : RecentlyVieweModel = {
//        return RecentlyVieweModel(latest: [])
//    }()
    @Published var infoPage2 :SaleOfProductsPage2 = SaleOfProductsPage2(name: "", description: "", rating: 0, number_of_reviews: 0, price: 0, colors: [], image_urls: [])
    @Published var curuselImagesPage2 : infoCarusel = infoCarusel(count: 0, info: [])
    @Published var infoForCarusel1 : InfoForCarusel1 = InfoForCarusel1(x: 0, count: 0, screen: UIScreen.main.bounds.width - 30, op: 0, num: 0)
    init() {
        NetworkingManager().getImagesForPage2ScreenCarusel {infoPage2 in
            DispatchQueue.main.async {
                self.infoPage2 = infoPage2
            self.attributesForCarousel()
                
            }
           
        }

    }
    
    private func attributesForCarousel(){
        var firstTrue = true
        for info in infoPage2.image_urls{
            if firstTrue{
                curuselImagesPage2.info.append(infoForCarusel( imageString: info, largeSize: true))
                firstTrue = false
            } else {
                curuselImagesPage2.info.append(infoForCarusel( imageString: info, largeSize: false))
            }
           
        }
    }
    

}
