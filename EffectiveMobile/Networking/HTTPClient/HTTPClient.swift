//
//  NetworkManager.swift
//  EffectiveMobile
//
//  Created by Алёша Виноградов on 23.03.2023.
//

import Foundation

class HTTPClient {
    typealias completeClosure = (_ data: Data?, _ error: Error?) -> Void

   // private let session: URLSessionProtocol

    func getFromUrl(url: URL, callback: @escaping completeClosure) {
        let request = NSMutableURLRequest(url: url)
        request.httpMethod = "GET"
        let task = URLSession(configuration: .default)
        task.dataTask(with: request as URLRequest) { (data, _, error) in
            callback(data, error)
        }
        .resume()
    }
    
    func getFromRequest(request: URLRequest, callback: @escaping completeClosure) {
        URLSession.shared.dataTask(with: request) { (data, _, error) in
            callback(data, error)
        }
        .resume()
    }
    
}
