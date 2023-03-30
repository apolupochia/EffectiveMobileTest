//
//  Page1ViewModel.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 26.03.2023.
//

import Foundation
import Combine

class Page1ViewModel: ObservableObject {
//    @Published var curuselOnePage1 : RecentlyVieweModel = {
//        return RecentlyVieweModel(latest: [])
//    }()
    
    @Published var curuselOnePage1 : RecentlyVieweModel = RecentlyVieweModel(latest: [])
    @Published var curuselTwoPage1 : SaleOfProductsPage1 = SaleOfProductsPage1(flash_sale: [])
    @Published var search = ""
    
    init() {
        NetworkingManager().getImagesForPage1ScreenCaruselOne{curuselOnePage1 in
            DispatchQueue.main.async {
                self.curuselOnePage1 = curuselOnePage1

            }
           
        }
        
        NetworkingManager().getImagesForPage1ScreenCaruselTwo { curuselTwoPage1 in
            DispatchQueue.main.async {
                self.curuselTwoPage1 = curuselTwoPage1

            }
        }
        
    }
    
    

}
