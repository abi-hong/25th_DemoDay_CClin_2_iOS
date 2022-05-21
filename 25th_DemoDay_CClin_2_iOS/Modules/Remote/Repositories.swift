//
//  Repositories.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/18.
//

import Foundation
import Alamofire

class Repositories {
    private init() {}
    static let shared = Repositories()
    
    private let baseUrl = API.shared.base_url
}

// MARK: Auth
extension Repositories {
    
    func registerForClub(userModel: UserModel, completion: @escaping (HTTPStatusCode, RegisterResponse?)->Void) {
        AF.request(
            baseUrl,
            method: .post,
            parameters: ["name": userModel.name, "id": userModel.id, "password": userModel.password]
        )
            .responseDecodable(of: RegisterResponse.self) { response in
                if let statusCode = response.response?.statusCode {
                    completion(HTTPStatusCode.init(rawValue: statusCode), response.value)
                }
            }
    }
    
    func loginForAll(id: String, password: String, completion: @escaping (HTTPStatusCode, RegisterResponse?)->Void) {
        AF.request(
            baseUrl,
            method: .post,
            parameters: ["id": id, "password": password]
        )
            .responseDecodable(of: RegisterResponse.self) { response in
                if let statusCode = response.response?.statusCode {
                    completion(HTTPStatusCode.init(rawValue: statusCode), response.value)
                }
            }
    }
}
