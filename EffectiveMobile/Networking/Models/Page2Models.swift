//
//  Page2Models.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 25.03.2023.
//

import Foundation

// MARK: - SaleOfProductsPage2

struct SaleOfProductsPage2: Codable {
    let name : String
    let description: String
    let rating: Double
    let number_of_reviews: Int
    let price: Int
    let colors: [String]
    let image_urls: [String]

}
