//
//  Page1Model.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 25.03.2023.
//

import Foundation


// MARK: - RecentlyVieweModel
struct RecentlyVieweModel: Codable {
    let latest: [Latest]
}

// MARK: - Latest
struct Latest: Codable {
    let category : String
    let name: String
    let price: Int
    let image_url: String

}



// MARK: - RecentlyVieweModel
struct SaleOfProductsPage1: Codable {
    let flash_sale: [FlashSale]

}

// MARK: - FlashSale
struct FlashSale: Codable{
   // var id = UUID()
    //, Identifiable {
   
    
    let category : String
    let name: String
    let price: Double
    let discount: Int
    let image_url: String
  //  var id = UUID()

}
