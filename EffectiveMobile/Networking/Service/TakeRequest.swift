//
//  TakeRequest.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 23.03.2023.
//

import Foundation

final class TakeRequest{
    static func requestFromAfressEffectiveMobile(urlString : String) -> URLRequest? {
        guard var url = URL(string: urlString) else {return nil}
        var request = URLRequest(url: url)
        //request.httpMethod = "GET"
        return request
    }
}
