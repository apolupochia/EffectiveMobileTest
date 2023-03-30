//
//  NetworkingManager.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 23.03.2023.
//

import Foundation
import UIKit
import Combine
import SwiftUI


protocol NetworkingManagerProtocol : AnyObject {
    func getImagesForPage1ScreenCaruselOne(responce: @escaping (RecentlyVieweModel) -> Void)
    func getImagesForPage1ScreenCaruselTwo(responce: @escaping (SaleOfProductsPage1) -> Void)
    func getImagesForPage2ScreenCarusel(responce: @escaping (SaleOfProductsPage2) -> Void)
}



final class NetworkingManager : NetworkingManagerProtocol{

    
    func getImagesForPage1ScreenCaruselOne(responce: @escaping (RecentlyVieweModel) -> Void) {
        
        takeModelForCaruselOne{ recentlyVieweModel in
            guard let recentlyVieweModel = recentlyVieweModel else {
                responce(RecentlyVieweModel(latest: []))
                return
            }
            responce(recentlyVieweModel)
        }
    }
    
    func getImagesForPage1ScreenCaruselTwo(responce: @escaping (SaleOfProductsPage1) -> Void){
        
        takeModelForCaruselTwo{ recentlyVieweModel in
            guard let recentlyVieweModel = recentlyVieweModel else {
                responce(SaleOfProductsPage1(flash_sale: []))
                return
            }
            responce(recentlyVieweModel)
        }
    }
    
    
    func getImagesForPage2ScreenCarusel(responce: @escaping (SaleOfProductsPage2) -> Void){
        
        takeModelForPage2{ recentlyVieweModel in
            guard let recentlyVieweModel = recentlyVieweModel else {
             //   responce(SaleOfProductsPage2(flash_sale: []))
                return
            }
            responce(recentlyVieweModel)
        }
    }
    
    
    
    
    
    
    
    private func takeModelForCaruselOne(responce: @escaping (RecentlyVieweModel?) -> Void) {
        guard let request : URLRequest = TakeRequest.requestFromAfressEffectiveMobile(urlString: APIAdresses.recentlyViewedProductsForPage1.rawValue) else { return  }
        HTTPClient().getFromRequest(request: request) { data, error in

             guard  let data = data else {
                 responce(nil)
                 return
             }

             guard let newFiles = try? JSONDecoder().decode(RecentlyVieweModel.self, from: data) else {
                 responce(nil)
                 return
             }
             responce(newFiles)

         }
    }
    
    private func takeModelForCaruselTwo(responce: @escaping (SaleOfProductsPage1?) -> Void) {
        guard let request : URLRequest = TakeRequest.requestFromAfressEffectiveMobile(urlString: APIAdresses.saleOfProductsForPage1.rawValue) else { return  }
        HTTPClient().getFromRequest(request: request) { data, error in


             guard  let data = data else {
                 responce(nil)
                 return
             }
            
  
            
            

             guard let newFiles = try? JSONDecoder().decode(SaleOfProductsPage1.self, from: data) else {
                 responce(nil)
                 return
             }
            

             responce(newFiles)

         }
    }
    
    
    private func takeModelForPage2(responce: @escaping (SaleOfProductsPage2?) -> Void) {
        guard let request : URLRequest = TakeRequest.requestFromAfressEffectiveMobile(urlString: APIAdresses.saleOfProductsForPage2.rawValue) else { return  }
        HTTPClient().getFromRequest(request: request) { data, error in

             guard  let data = data else {
                 responce(nil)
                 return
             }
            
    

             guard let newFiles = try? JSONDecoder().decode(SaleOfProductsPage2.self, from: data) else {
                 responce(nil)
                 return
             }
             responce(newFiles)

         }
    }
    

    
}
