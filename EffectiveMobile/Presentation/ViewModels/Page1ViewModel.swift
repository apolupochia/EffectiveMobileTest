//
//  Page1ViewModel.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 26.03.2023.
//

import Foundation
import Combine


protocol Page1ViewModelProtocol : AnyObject {
    var curuselOnePage1 : RecentlyVieweModel { get set }
    var curuselTwoPage1 : SaleOfProductsPage1 { get set }
    var search : String { get set }
    
    init()
    
    func getInfoForCaruselOne()
    func getInfoForCaruselTwo()
    
}

class Page1ViewModel: ObservableObject , Page1ViewModelProtocol {
//    @Published var curuselOnePage1 : RecentlyVieweModel = {
//        return RecentlyVieweModel(latest: [])
//    }()
    
    @Published var curuselOnePage1 : RecentlyVieweModel = RecentlyVieweModel(latest: [])
    @Published var curuselTwoPage1 : SaleOfProductsPage1 = SaleOfProductsPage1(flash_sale: [])
    @Published var search = ""
    
    required init() {
        getInfoForCaruselOne()
        getInfoForCaruselTwo()
       
        
    }
    
    func getInfoForCaruselOne(){
        NetworkingManager().getImagesForPage1ScreenCaruselOne{curuselOnePage1 in
            DispatchQueue.main.async {
                self.curuselOnePage1 = curuselOnePage1
                
            }
        }
    }
    
    
    func getInfoForCaruselTwo(){
        NetworkingManager().getImagesForPage1ScreenCaruselTwo { curuselTwoPage1 in
            DispatchQueue.main.async {
                self.curuselTwoPage1 = curuselTwoPage1

            }
        }
    }
    

}
