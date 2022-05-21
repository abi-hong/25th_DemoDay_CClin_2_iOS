//
//  API.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/17.
//

import Foundation
import Alamofire
import RealmSwift

class API {
    private init() {}
    
    static let shared: API = API()
    
    let base_url = ""
    
    func getHeaders() -> HTTPHeaders? {
        var headers: HTTPHeaders = [
            "key": "vaule"
        ]
        
        return headers
    }
}
