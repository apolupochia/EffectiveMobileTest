//
//  Information.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 30.03.2023.
//

import Foundation


enum APIAdresses : String {
    case recentlyViewedProductsForPage1 = "https://run.mocky.io/v3/cc0071a1-f06e-48fa-9e90-b1c2a61eaca7"
    case saleOfProductsForPage1 = "https://run.mocky.io/v3/a9ceeb6e-416d-4352-bde6-2203416576ac"
    
    case saleOfProductsForPage2 = "https://run.mocky.io/v3/f7f99d04-4971-45d5-92e0-70333383c239"
    
}

public enum HTTPMethod : String {
    case get     = "GET"
    case post    = "POST"
    case put     = "PUT"
    case patch   = "PATCH"
    case delete  = "DELETE"
}
