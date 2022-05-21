//
//  UserLoginManager.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/18.
//

import SwiftUI
import RealmSwift
import Alamofire

final class UserLoginManager: NSObject {

    static let shared = UserLoginManager()
    private override init() { }

    // 1
    func doServerRegister(userModel: UserModel) {
        Repositories.shared.registerForClub(userModel: userModel) { status, registerResponse in
            if let accessToken = registerResponse?.token.accessToken {
                self.setUser(jwtToken: accessToken, name: userModel.name, id: userModel.id)
            }
        }
    }
    
    func doLogin(id: String, password: String) {
        Repositories.shared.loginForAll(id: id, password: password) { status, registerResponse in
            if let accessToken = registerResponse?.token.accessToken {
                self.setUser(jwtToken: accessToken, id: id)
            }
        }
    }
    
    func setUser(
        jwtToken: String? = nil,
        name: String? = nil,
        id: String? = nil
    ) {
        let realm = try! Realm()
        
        // 기존에 유저 정보가 realm 에 존재 하면
        if let user = realm.objects(RealmUserModel.self).first {
            try! realm.write {
                if let jwtToken = jwtToken {
                    user.jwtToken = jwtToken
                }
                if let name = name {
                    user.name = name
                }
                if let id = id {
                    user.id = id
                }
            }
        }
        // 없으면 새로 만들어서 입력함
        else {
            let user = RealmUserModel()
            if let jwtToken = jwtToken {
                user.jwtToken = jwtToken
            }
            if let name = name {
                user.name = name
            }
            if let id = id {
                user.id = id
            }
            try! realm.write {
                realm.add(user)
            }
        }
    }
}
