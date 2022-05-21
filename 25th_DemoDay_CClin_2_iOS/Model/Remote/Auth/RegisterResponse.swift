//
//  RegisterResponse.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/18.
//

import Foundation

struct RegisterResponse: Codable {
    let user: UserData
    let token: Token
}

// MARK: - Token
struct Token: Codable {
    let tokenType: String
    let expiresIn: Int
    let accessToken, refreshToken: String

    enum CodingKeys: String, CodingKey {
        case tokenType = "token_type"
        case expiresIn = "expires_in"
        case accessToken = "access_token"
        case refreshToken = "refresh_token"
    }
}

// MARK: - User
struct UserData: Codable {
    let id: Int
    let name, email: String?
    let avatar: String
}
